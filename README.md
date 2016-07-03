### Intro ###
MessageBox is a simple concept for decoupling entities. Think of it as notifications but lazy.

For example entity A can place a message that entity B can read whenever suitable – not at once like notifications.

![Image of MessageBox-Concept](https://github.com/MKGitHub/MessageBox-Concept/blob/master/MessageBox.png)




### Example Usage ###
   ```swift
    private let box:MessageBox = MessageBox()

    // put message
    box.set(object:"TestObject1", key:"TestKey1")

    // get message, don't remove so that we or someone else can still retrieve it later
    let someObject:String = box.get(objectForKey:"TestKey1", removeObject:no)

    // get message, remove
    let someObject:String = box.get(objectForKey:"TestKey1", removeObject:yes)
