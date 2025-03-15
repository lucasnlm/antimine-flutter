import java.util.*

object StringExt {
    fun String.snakeToCamelCase(): String {
        return split("_").joinToString("") { part ->
            part.replaceFirstChar { it.titlecase() }
        }.replaceFirstChar {
            it.lowercase()
        }
    }
}
