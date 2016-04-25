##super_effective
If you don't know what pokemon are then I feel bad for you. Pokemon has been around for the 20 years and is one of the longest running franchises to date. With that being said Pokemon will be the subject of our mock assement.

If you've never played pokemon or watched the show it's a pretty simple concept to understand and grab.

Pokemon are things you catch and train. They can learn different moves and have certain abilities.

Today we will build a pokemon class. You will be able to teach each pokemon a move, you can ask it what moves it knows, double attack points and so on and so forth.

The interaction I expect will look something like this.


```
charizard = Pokemon.new

charizard.do_this_attack('fire blast')

#=> 'pokemon doesn't know the move fire-blast maybe you should teach it to him D:'

charizard.learn_this_attack('fire blast', 100)

charizard.do_this_attack('fire blast')
#=> 'pokemon used fire blast! did 100 damage!'

charizard.learn_this_attack('slash', 30)

charizard.what_do_you_know
#=> {'fire blast' => 100, 'slash' => 30}

charizard.its_super_effective
#=> {'fire blast' => 200, 'slash' => 60}

charizard.check_attack('slash')
# => 60

charizard.how_many_moves
# => I know how to do 2 moves

charizard.strongest_attack
# => {'fire blast' => 200 }

charizard.print_strongest_attack
# => my strongest attack is fire blast at 200

charizard.weakest_attack
# => {'slash' => 60}

charizard.print_weakest_attack
# => my weakest attack is slash at 60


```

Students will be evaluated according to the following rubric:


###Ruby Syntax & API

4: Developer is able to write Ruby with a minimum of reference or debugging

3: Developer is able to write Ruby with some debugging of fundamental concepts

2: Developer is generally able to write Ruby, but gets stuck on or needs help with fundamental concepts

1: Developer spends significant time debugging elementary syntax or concepts

0: Developer struggles with basic Ruby syntax

###Completion and Progress

4: Developer fully completes baseline assignment and one of the Challenge options.

3: Developer completes baseline assignment and makes meaningful progress toward one of the Challenge options.

2: Developer completes baseline but struggles to progress on optional challenges.

1: Developer struggles to complete the baseline assignment.

0: Developer is unable to digest the problem and identify an approach.

###Testing

4: Developer excels at taking small steps and using the tests for both design and verification

3: Developer writes tests that are effective validation of functionality, but don't drive the design

2: Developer uses and writes tests to guide development, but implements more functionality than the tests cover

1: Developer is able to use existing tests, but not write new ones

0: Developer does not use tests to guide development

###Workflow

4: Developer is a master of their tools, efficiently moving between phases of development

3: Developer demonstrates comfort with their tools and makes some use of keyboard shortcuts

2: Developer smoothly moves between tools, but is dependent on mouse-driven interaction

1: Developer gets work done, but wastes significant time or screen real estate

0: Developer struggles to effectively use the Terminal, the file system, or their editor without direct support

###Collaboration

4: Developer actively seeks collaboration both before implementing, while in motion, and when stuck

3: Developer lays out their thinking before attacking a problem and integrates feedback through the process

2: Developer asks detailed questions when progress slows or stops

1: Developer is able to integrate unsolicited feedback but does not really collaborate

0: Developer needs more than two reminders to "think out loud" or struggles to articulate their process

###Enumerable & Collections

4: Application consistently makes use of the best-choice Enumerable methods

3: Application demonstrates comfortable use of appropriate Enumerable methods

2: Application demonstrates functional knowledge of Enumerable but only uses the most basic techniques

1: Application demonstrates deficiencies with Enumerable and struggles with collections
Status API Training Shop Blog About
