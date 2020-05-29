users = User.create([
    {
        ID: 504110191,
        name: "Yoher Obando Duarte",
        email: "yoher.od96@hotmail.com"
    },
    {
        ID: 504110192,
        name: "Javier Montenegro Herrera",
        email: "javier.montenegro@hotmail.com"
    },
    {
        ID: 504110193,
        name: "Juan Carlos Rios Salcedo",
        email: "juan.rios@hotmail.com"
    }
])

questions = Question.create([
    {
        ID: 001,
        label: "What is the capital of Russia?",
        active: true
    },
    {
        ID: 002,
        label: "What is the capital of China?",
        active: true
    },
    {
        ID: 003,
        label: "What is the capital of Spain?",
        active: true
    },
    {
        ID: 004,
        label: "What is the capital of France?",
        active: true
    },
    {
        ID: 005,
        label: "What is the capital of Italy?",
        active: true
    }
])

answers = Answer.create([
    {
        ID: 001,
        answer: "Rome",
        question: questions.last,
        user: users.first
    },
    {
        ID: 002,
        answer: "Moscow",
        question: questions.first,
        user: users.second
    },
    {
        ID: 003,
        answer: "Paris",
        question: questions.fourth,
        user: users.third
    },
    {
        ID: 004,
        answer: "Madrid",
        question: questions.third,
        user: users.last
    },
    {
        ID: 005,
        answer: "Beijing",
        question: questions.second,
        user: users.last
    }
])