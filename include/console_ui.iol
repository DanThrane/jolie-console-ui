type YesNoPromptRequest: string {
    .defaultValue?: bool
}

interface ConsoleUIIface {
  RequestResponse:
     readLine(void)(string),
     hasNextLine(void)(bool),
     displayPrompt(string)(string),
     displayYesNoPrompt(YesNoPromptRequest)(bool),
     displaySpinner(void)(void),
     stopSpinner(void)(void),
     readPassword(void)(string),
     displayPasswordPrompt(string)(string),
     createColoredMessage(string)(string),
     printColoredMessage(string)(void)
}

outputPort ConsoleUI {
    Interfaces: ConsoleUIIface
}

embedded {
  Java: "dk.thrane.jolie.ConsoleUI" in ConsoleUI
}
