import Foundation

struct Question {
    let title: String
    let answers: [Answer]
    let answerCategory: AnswerCategory
    
    static func getQuestions() -> [Question] {
        [
        Question(
            title: "Какую пищу вы предпочитаете?",
            answers: [
                Answer(title: "Стейк", animal: .dog),
                Answer(title: "Рыба", animal: .cat),
                Answer(title: "Морковь", animal: .rabbit),
                Answer(title: "Кукуруза", animal: .turtle)
            ],
            answerCategory: .single
        ),
        Question(
            title: "Какую пищу вы предпочитаете?",
            answers: [
                Answer(title: "Плавать", animal: .dog),
                Answer(title: "Спать", animal: .cat),
                Answer(title: "Обниматься", animal: .rabbit),
                Answer(title: "Есть", animal: .turtle)
            ],
            answerCategory: .multiple
        ),
        Question(
            title: "Какую пищу вы предпочитаете?",
            answers: [
                Answer(title: "Ненавижу", animal: .cat),
                Answer(title: "Нервничаю", animal: .rabbit),
                Answer(title: "Не замечаю", animal: .turtle),
                Answer(title: "Обожаю", animal: .dog)
            ],
            answerCategory: .ranged
        )
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum AnswerCategory {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case turtle = "🐢"
    case rabbit = "🐰"
    
    var definition: String {
        switch self {
        case .dog:
            "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            "Вам нравится всё мягкое. Вы здоровы и полны энергии."
        case .turtle:
            "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
