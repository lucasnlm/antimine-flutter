import StringExt.snakeToCamelCase
import java.io.File
import java.util.*

fun main() {
    // print pwd
    println("Current working directory: ${System.getProperty("user.dir")}")

    // Create i18n folder
    val i18nFolder = File("./i18n")
    i18nFolder.deleteRecursively()
    if (!i18nFolder.exists()) {
        i18nFolder.mkdir()
    }

    for (locale in Locales.allowed) {
        val countryCode = locale.substringAfter("-")
        val languageCode = locale.substringBefore("-")
        val targetJson = Locales.hasSpecific.contains(languageCode).let {
            if (it) {
                File("./i18n/strings_$languageCode-$countryCode.i18n.json")
            } else {
                File("./i18n/strings_$languageCode.i18n.json")
            }
        }

        if (Locales.denied.contains(locale)) {
            targetJson.delete()
            continue
        }

        val fileName = "./resources/values-$languageCode-r$countryCode/strings.xml"

        // Read and parse XML file
        val file = File(fileName)
        if (!file.exists()) {
            println("File $fileName does not exist")
            continue
        }

        // Regex to get key and value
        val regex = Regex("name=\"(.*?)\"|>(.*?)<")

        val xmlLines = file.readText().split("\n")
        val result = mutableMapOf<String, String>()
        for (line in xmlLines) {
            if (line.contains("string")) {
                val matches = regex.findAll(line)
                val key = matches.first().value.replace("name=\"", "").dropLast(1).snakeToCamelCase()
                val value = matches.last().value.drop(1).dropLast(1).replace("+%1\$d", "\$param1").replace("+%2\$d", "\$param2").replace("%s", "\$value").replace("\\'", "'")
                result[key] = value
            }
        }

        // Write JSON, slang format
        val parsedResult = result.map { (key, value) -> "  \"$key\": \"$value\"" }.joinToString(",\n")
        val resultStr = "{\n$parsedResult\n}\n"
        targetJson.writeText(resultStr)

        if (locale == "en-US") {
            File("./i18n/strings.i18n.json").writeText(resultStr)
        }
    }
}
