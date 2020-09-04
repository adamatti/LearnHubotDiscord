module.exports = robot => {
    robot.respond(/\w/, res => {
        const responses = [
            "Não endendi",
            "Sorry... pode repetir",
            "Não captei"
        ]

        res.reply(res.random(responses))
    })

    robot.enter( res => {
        res.send("Olá, entrando na sala")
    })
}