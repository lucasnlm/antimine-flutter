package dev.lucasnlm.appimages

import java.io.File

fun main() {
    val strings = listOf(
        "ES" to mapOf(
            "Classic Minesweeper!" to "Buscaminas Clásico!",
            "Various Themes" to "Temas Variados",
            "Play without guessing!" to "¡Juega sin adivinar!",
            "Only deduction." to "Solo deducción.",
            "Various difficulties" to "Varias dificultades",
            "Custom controls" to "Controles personalizados",
            "Play your way!" to "¡Juega a tu manera!",
            "Custom game" to "Juego personalizado",
            "Legendary Level!" to "¡Nivel Legendario!",
            "Game Statistics" to "Estadísticas",
        ),
        "FR" to mapOf(
            "Classic Minesweeper!" to "Démineur Classique!",
            "Various Themes" to "Divers Thèmes",
            "Play without guessing!" to "Jouez sans deviner!",
            "Only deduction." to "Seulement déduction.",
            "Various difficulties" to "Difficultés variées",
            "Custom controls" to "Commandes personnalisées",
            "Play your way!" to "Jouez à votre façon!",
            "Custom game" to "Jeu personnalisé",
            "Legendary Level!" to "Niveau Légendaire!",
            "Game Statistics" to "Statistiques",
        ),
        "DE" to mapOf(
            "Classic Minesweeper!" to "Klassischer Minesweeper!",
            "Various Themes" to "Verschiedene Themen",
            "Play without guessing!" to "Spielen Sie ohne zu raten!",
            "Only deduction." to "Nur Abzug.",
            "Various difficulties" to "Verschiedene Schwierigkeiten",
            "Custom controls" to "5 Steuerungsarten",
            "Play your way!" to "Spiel nach deiner Art!",
            "Custom game" to "Benutzerdefiniertes Spiel",
            "Legendary Level!" to "Legendärer Level!",
            "Game Statistics" to "Spielstatistiken",
        ),
        "IT" to mapOf(
            "Classic Minesweeper!" to "Campo Minato Classico!",
            "Various Themes" to "Vari Temi",
            "Play without guessing!" to "Gioca senza indovinare!",
            "Only deduction." to "Solo deduzione.",
            "Various difficulties" to "Varie difficoltà",
            "Custom controls" to "Controlli personalizzati",
            "Play your way!" to "Gioca a modo tuo!",
            "Custom game" to "Gioco personalizzato",
            "Legendary Level!" to "Livello Leggendario!",
            "Game Statistics" to "Statistiche di gioco",
        ),
        "JA" to mapOf(
            "Classic Minesweeper!" to "クラシックマインスイーパー!",
            "Various Themes" to "様々なテーマ",
            "Play without guessing!" to "推測せずにプレイ!",
            "Only deduction." to "推論のみ。",
            "Various difficulties" to "様々な難易度",
            "Custom controls" to "カスタムコントロール",
            "Play your way!" to "あなたのやり方でプレイ!",
            "Custom game" to "カスタムゲーム",
            "Legendary Level!" to "伝説のレベル!",
            "Game Statistics" to "ゲーム統計",
        ),
        "KO" to mapOf(
            "Classic Minesweeper!" to "클래식 지뢰찾기!",
            "Various Themes" to "다양한 테마",
            "Play without guessing!" to "추측하지 않고 플레이!",
            "Only deduction." to "추론 만.",
            "Various difficulties" to "다양한 난이도",
            "Custom controls" to "사용자 정의 컨트롤",
            "Play your way!" to "당신의 방식으로 플레이!",
            "Custom game" to "사용자 정의 게임",
            "Legendary Level!" to "전설적인 수준!",
            "Game Statistics" to "게임 통계",
        ),
        "PT" to mapOf(
            "Classic Minesweeper!" to "Campo Minado Clássico!",
            "Various Themes" to "Vários Temas",
            "Play without guessing!" to "Jogue sem adivinhar!",
            "Only deduction." to "Apenas dedução.",
            "Various difficulties" to "Várias dificuldades",
            "Custom controls" to "Controles personalizados",
            "Play your way!" to "Jogue do seu jeito!",
            "Custom game" to "Jogo personalizado",
            "Legendary Level!" to "Nível Lendário!",
            "Game Statistics" to "Estatísticas do jogo",
        ),
        "RU" to mapOf(
            "Classic Minesweeper!" to "Классический Сапёр!",
            "Various Themes" to "Различные темы",
            "Play without guessing!" to "Играйте, не угадывая!",
            "Only deduction." to "Только вычет.",
            "Various difficulties" to "Различные сложности",
            "Custom controls" to "Пользовательские контроли",
            "Play your way!" to "Играй по-своему!",
            "Custom game" to "Пользовательская игра",
            "Legendary Level!" to "Легендарный уровень!",
            "Game Statistics" to "Игровая статистика",
        ),
        "ZH" to mapOf(
            "Classic Minesweeper!" to "经典扫雷!",
            "Various Themes" to "各种主题",
            "Play without guessing!" to "玩而不猜!",
            "Only deduction." to "只有推断。",
            "Various difficulties" to "各种难度",
            "Custom controls" to "自定义控件",
            "Play your way!" to "按你的方式玩!",
            "Custom game" to "自定义游戏",
            "Legendary Level!" to "传奇级别!",
            "Game Statistics" to "游戏统计",
        ),
        "HR" to mapOf(
            "Classic Minesweeper!" to "Klasični Minesweeper!",
            "Various Themes" to "Razne teme",
            "Play without guessing!" to "Igrajte bez pogađanja!",
            "Only deduction." to "Samo odbitak.",
            "Various difficulties" to "Razne teškoće",
            "Custom controls" to "Prilagođeni kontroleri",
            "Play your way!" to "Igrajte na svoj način!",
            "Custom game" to "Prilagođena igra",
            "Legendary Level!" to "Legendarni nivo!",
            "Game Statistics" to "Statistika igre",
        ),
        "AR" to mapOf(
            "Classic Minesweeper!" to "سابق الألغام الكلاسيكي!",
            "Various Themes" to "مواضيع متنوعة",
            "Play without guessing!" to "العب دون تخمين!",
            "Only deduction." to "الخصم فقط.",
            "Various difficulties" to "صعوبات متنوعة",
            "Custom controls" to "ضوابط مخصصة",
            "Play your way!" to "العب بطريقتك!",
            "Custom game" to "لعبة مخصصة",
            "Legendary Level!" to "مستوى أسطوري!",
            "Game Statistics" to "إحصائيات اللعبة",
        ),
        "DK" to mapOf(
            "Classic Minesweeper!" to "Klassisk Minesveiper!",
            "Various Themes" to "Forskjellige temaer",
            "Play without guessing!" to "Spill uten å gjette!",
            "Only deduction." to "Bare fradrag.",
            "Various difficulties" to "Forskjellige vanskeligheter",
            "Custom controls" to "Tilpassede kontroller",
            "Play your way!" to "Spill på din måte!",
            "Custom game" to "Tilpasset spill",
            "Legendary Level!" to "Legendarisk nivå!",
            "Game Statistics" to "Spillstatistikk",
        ),
        "SK" to mapOf(
            "Classic Minesweeper!" to "Klasický Hľadanie mín!",
            "Various Themes" to "Rôzne témy",
            "Play without guessing!" to "Hrajte bez hádania!",
            "Only deduction." to "Iba odpočet.",
            "Various difficulties" to "Rôzne obtiažnosti",
            "Custom controls" to "Vlastné ovládanie",
            "Play your way!" to "Hrajte podľa svojho!",
            "Custom game" to "Vlastná hra",
            "Legendary Level!" to "Legendárna úroveň!",
            "Game Statistics" to "Herná štatistika",
        ),
        "CZ" to mapOf(
            "Classic Minesweeper!" to "Klasický Hledání min!",
            "Various Themes" to "Různá témata",
            "Play without guessing!" to "Hrajte bez hádání!",
            "Only deduction." to "Pouze odpočet.",
            "Various difficulties" to "Různé obtížnosti",
            "Custom controls" to "Vlastní ovládání",
            "Play your way!" to "Hrajte podle svého!",
            "Custom game" to "Vlastní hra",
            "Legendary Level!" to "Legendární úroveň!",
            "Game Statistics" to "Herní statistiky",
        ),
        "TR" to mapOf(
            "Classic Minesweeper!" to "Klasik Mayın Tarlası!",
            "Various Themes" to "Çeşitli Temalar",
            "Play without guessing!" to "Tahmin etmeden oyna!",
            "Only deduction." to "Sadece çıkarma.",
            "Various difficulties" to "Çeşitli zorluklar",
            "Custom controls" to "Özel kontroller",
            "Play your way!" to "Kendi yolunla oyna!",
            "Custom game" to "Özel oyun",
            "Legendary Level!" to "Efsanevi Seviye!",
            "Game Statistics" to "Oyun İstatistikleri",
        ),
        "NL" to mapOf(
            "Classic Minesweeper!" to "Klassieke Mijnenveger!",
            "Various Themes" to "Diverse thema's",
            "Play without guessing!" to "Speel zonder te raden!",
            "Only deduction." to "Alleen aftrek.",
            "Various difficulties" to "Diverse moeilijkheden",
            "Custom controls" to "Aangepaste bedieningselementen",
            "Play your way!" to "Speel op jouw manier!",
            "Custom game" to "Aangepast spel",
            "Legendary Level!" to "Legendarisch niveau!",
            "Game Statistics" to "Spelstatistieken",
        ),
        "NO" to mapOf(
            "Classic Minesweeper!" to "Klassisk Minesveiper!",
            "Various Themes" to "Forskjellige temaer",
            "Play without guessing!" to "Spill uten å gjette!",
            "Only deduction." to "Bare fradrag.",
            "Various difficulties" to "Forskjellige vanskeligheter",
            "Custom controls" to "Tilpassede kontroller",
            "Play your way!" to "Spill på din måte!",
            "Custom game" to "Tilpasset spill",
            "Legendary Level!" to "Legendarisk nivå!",
            "Game Statistics" to "Spillstatistikk",
        ),
        "SE" to mapOf(
            "Classic Minesweeper!" to "Klassisk Minesvepare!",
            "Various Themes" to "Olika teman",
            "Play without guessing!" to "Spela utan att gissa!",
            "Only deduction." to "Endast avdrag.",
            "Various difficulties" to "Olika svårigheter",
            "Custom controls" to "Anpassade kontroller",
            "Play your way!" to "Spela på ditt sätt!",
            "Custom game" to "Anpassat spel",
            "Legendary Level!" to "Legendarisk nivå!",
            "Game Statistics" to "Spelstatistik",
        ),
        "FI" to mapOf(
            "Classic Minesweeper!" to "Klassinen Miinaharava!",
            "Various Themes" to "Eri teemoja",
            "Play without guessing!" to "Pelaa arvaamatta!",
            "Only deduction." to "Vain vähennys.",
            "Various difficulties" to "Eri vaikeuksia",
            "Custom controls" to "Mukautetut ohjaimet",
            "Play your way!" to "Pelaa tavallasi!",
            "Custom game" to "Mukautettu peli",
            "Legendary Level!" to "Legendaarinen taso!",
            "Game Statistics" to "Pelistatistiikka",
        ),
        "PL" to mapOf(
            "Classic Minesweeper!" to "Klasyczny Saper!",
            "Various Themes" to "Różne motywy",
            "Play without guessing!" to "Graj bez zgadywania!",
            "Only deduction." to "Tylko odliczanie.",
            "Various difficulties" to "Różne trudności",
            "Custom controls" to "Niestandardowe sterowanie",
            "Play your way!" to "Graj na swój sposób!",
            "Custom game" to "Niestandardowa gra",
            "Legendary Level!" to "Legendarny poziom!",
            "Game Statistics" to "Statystyki gry",
        ),
        "GR" to mapOf(
            "Classic Minesweeper!" to "Κλασικό Minesweeper!",
            "Various Themes" to "Διάφορα Θέματα",
            "Play without guessing!" to "Παίξτε χωρίς να μαντεύετε!",
            "Only deduction." to "Μόνο αφαίρεση.",
            "Various difficulties" to "Διάφορες δυσκολίες",
            "Custom controls" to "Προσαρμοσμένοι έλεγχοι",
            "Play your way!" to "Παίξτε με τον δικό σας τρόπο!",
            "Custom game" to "Προσαρμοσμένο παιχνίδι",
            "Legendary Level!" to "Θρυλικό επίπεδο!",
            "Game Statistics" to "Στατιστικά παιχνιδιού",
        ),
        "UK" to mapOf(
            "Classic Minesweeper!" to "Класичний Сапер!",
            "Various Themes" to "Різні теми",
            "Play without guessing!" to "Грайте без вгадування!",
            "Only deduction." to "Тільки відрахування.",
            "Various difficulties" to "Різні складності",
            "Custom controls" to "Користувацькі контроли",
            "Play your way!" to "Грайте по-своєму!",
            "Custom game" to "Користувацька гра",
            "Legendary Level!" to "Легендарний рівень!",
            "Game Statistics" to "Ігрова статистика",
        ),
        "CA" to mapOf(
            "Classic Minesweeper!" to "Buscamines Clàssic!",
            "Various Themes" to "Temes Variats",
            "Play without guessing!" to "Juga sense endevinar!",
            "Only deduction." to "Només deducció.",
            "Various difficulties" to "Diverses dificultats",
            "Custom controls" to "Controls personalitzats",
            "Play your way!" to "Juga a la teva manera!",
            "Custom game" to "Joc personalitzat",
            "Legendary Level!" to "Nivell Llegendari!",
            "Game Statistics" to "Estadístiques del joc",
        ),
    )

    val baseLocale = "EN"

    val listOfSvgs = (1..<10).map { "0$it.svg" }
    val listOfTemplates = listOf("ios_55", "ios_65", "ios_67", "ios_129")

    // Create folders
    listOfTemplates.forEach { template ->
        File("./out").deleteRecursively()
        File("./out/$template").mkdirs()
    }

    listOfTemplates.forEach { template ->
        // Copy base
        val baseFile = File("./resources/$template/$baseLocale")
        baseFile.copyRecursively(File("./out/$template/$baseLocale"))

        strings.forEach { (lang, strings) ->
            // Copy Base
            val targetFile = File("./out/$template/$lang")
            targetFile.deleteRecursively()
            targetFile.mkdirs()
            baseFile.copyRecursively(targetFile)

            // Translate Svgs
            listOfSvgs.forEach { svg ->
                val svgFile = File("./out/$template/$lang/$svg")
                if (svgFile.exists()) {
                    val svgContent = svgFile.readText()
                    val translatedSvg = strings.entries.fold(svgContent) { acc, entry ->
                        acc.replace(entry.key, entry.value)
                    }
                    svgFile.writeText(translatedSvg)
                } else {
                    println("File not found: $svg")
                }
            }
        }
    }
}
