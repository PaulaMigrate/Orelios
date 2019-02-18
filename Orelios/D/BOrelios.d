BEGIN Borelios

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrelTalk","GLOBAL",1)~
THEN Borelios OrelBant1
~You are not from Amn, are you? I've spent enough time here to know an Amnish when I see one, and you are clearly not.~ [PM_Orelg]
DO ~IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
IF ~~THEN REPLY ~I'm not, no. We were brought from the the north of here, near Baldur's Gate. Imoen and I grew up in a place called Candlekeep, on the coast.~ + OrelBant1-2
IF ~~THEN REPLY ~I can't be bothered to talk now, Orelios. Leave me be.~ + PM_OrelEx1-1

CHAIN
IF ~~ THEN Borelios OrelBant1-2
~Candlekeep? Truly?~
END
IF ~~ THEN REPLY ~Yes. Is that so difficult to believe?~ + OrelBant1-3
IF ~~ THEN REPLY ~Does that bother you?~ + OrelBant1-3

CHAIN
IF ~~ THEN Borelios OrelBant1-3
~No, it's simply that... Well, its a place of renown even where I'm from, but I've not heard it described as the sort of place one would raise children.~
END
IF ~~ THEN REPLY ~I came to grow fond of the place, and its people. I felt I had family there, though we were not blood.~ + OrelBant1-5
IF ~~ THEN REPLY ~It was unusual, yes, but our guardian did as well as he could given the circumstances.~ + OrelBant1-4
IF ~~ THEN REPLY ~Had I a choice, I would have lived somewhere less stifling. But I made do.~  + OrelBant1-6

CHAIN
IF ~~ THEN Borelios OrelBant1-4
~I imagine how one might have to adapt to such an environment. We all do our best to provide idyllic home lives for our loved ones, but oftentimes you must accomplish what you can with what you have. I know this well enough.~
END
IF ~~ THEN REPLY ~You had a family in Aglarond?~ + OrelBant1-7
IF ~~ THEN REPLY ~Terribly sorry to interrupt, but we have more pressing matters than reminiscence to attend to.~ + PM_OrelEx1-1

CHAIN
IF ~~ THEN Borelios OrelBant1-5
~Ah, it must not have been easy to leave it behind, then. It was many years before I could leave my own family for the road, in good conscience.~
END
IF ~~ THEN REPLY ~You left your family for adventure?~ + OrelBant1-A
IF ~~ THEN REPLY ~We have more important things to focus on. We'll talk later.~ EXIT

CHAIN
IF ~~ THEN Borelios OrelBant1-6
~Ah, I should have figured you for a hellion. I hope you did not give your elders too much grief.~
END
IF ~~ THEN REPLY ~Only as much as they asked for. You cannot imagine how stifling it was to be locked in that place with such single-minded people.~ + OrelBant1-B
IF ~~ THEN REPLY ~It was not all that bad, honestly. Imoen and I were the only children, we were given leeway to be as such.~ + OrelBant1-C

CHAIN
IF ~~ THEN Borelios OrelBant1-7
~I did. I have twin daughters in Aglarond, both grown now. With their father in the barracks and their mother in the temple of Rillifane they did not have what one could call a typical childhood.~
= ~But as you said, we did the best that we could. It is all you can do.~
END
IF ~~ THEN REPLY ~I wonder, sometimes, about how things might have been different, how I might have been different.~ + OrelBant1-8
IF ~~ THEN REPLY ~I do not blame Gorion. He is not responsible for any of my troubles. He did only what he thought right.~ + OrelBant1-9

CHAIN
IF ~~ THEN Borelios OrelBant1-8
~It might be tempting to do so, but there is no escaping the past in wondering what could have been.~
= ~Besides, if a <PRO_MANWOMAN> such as yourself is any indication, one does not require an idyllic beginning to excel later in life. I have been with you a short time and even I can recognize it.~
END
IF ~~ THEN REPLY ~I appreciate the sentiment, but this life has not been without its hardships.~ + PM_OrelEx1-2

CHAIN
IF ~~ THEN Borelios OrelBant1-9
~It is good that you harbor no bitterness. Regrets will serve only to weaken you and your resolve going forward.~
END
IF ~~ THEN REPLY ~You have no regrets?~ + PM_OrelEx1-3

CHAIN
IF ~~ THEN Borelios OrelBant1-A
~Not in a callous way. I only left Aglarond when my children were grown. I imagine your departure was much harder.~
END
IF ~~ THEN REPLY ~How did they feel about your departure?~ + OrelBant1-D
IF ~~ THEN REPLY ~I have coped well enough, though the kidnapping of Imoen has stung me.~ +PM_OrelEx1-4

CHAIN
IF ~~ THEN Borelios OrelBant1-B
~I have lived among military men and women, so I am no stranger to rigid order. But I suppose it suits me.~
= ~For a child, however, I can see how that would be suffocating to the spirit. I tried to spare my daughters the colder aspects of an regimented life.~
END
IF ~~ THEN REPLY ~And how did that turn out?~ GOTO PM_OrelEx1-5

CHAIN
IF ~~ THEN Borelios OrelBant1-C
~Oh? That is good. For all my love of structure, I recognized the necessity of freedom in youth. I owed leniency to my children.~
END
IF ~~ THEN REPLY ~Did that turned out as well as you'd hoped?~ + PM_OrelEx1-5
IF ~~ THEN REPLY ~No offense meant, Orelios, but I somehow don't see you as the gentle caregiving type.~ + PM_OrelEx1-6

CHAIN
IF ~~ THEN Borelios OrelBant1-D
~It did not hurt them, if that's what you're getting at. My partner Sylmae has her work in the church of Rillifane, and our daughters have their own lives now, apart from mine.~
= ~It was not easy to leave, but they are fine without me.~
END
IF ~~ THEN REPLY ~I find it hard to believe they didn't object to your travel plans, to be honest.~ + PM_OrelEx1-7

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-1
~Understood. Let us continue on, then.~
END
IF ~~ THEN REPLY ~Let's.~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-2
~Certainly, but you have met them capably, and are better for them. Come, let us continue on our path.~
END
IF ~~ THEN REPLY ~Let's go.~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-3
~I did, once. At a certain point in your life, you have to let go of them. But we have tarried too long, we should continue later.~
END
IF ~~ THEN REPLY ~Sure.~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-4
~Then we shall endeavor even harder for her freedom. Let's continue on.~
END
IF ~~ THEN REPLY ~Very well.~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-5
~Quite well, in fact. My daughters are independent and happy, or at least they have always seemed so.~
= ~But that is entirely too much chit-chat for one day. We should focus on the task at hand.~
END
IF ~~ THEN REPLY ~Indeed. We'll talk more later.~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-6
~None taken, and I can assure you that even the most severe warrior's heart is warmed in the presence of his children. I strive to keep remembrance of what they have taught me.~
= ~Ah, we have tarried to long on this idle chatter. We have work to do, let's get to it.~
END
IF ~~ THEN REPLY ~Indeed. We'll talk more later.~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-7
~They may have been sad to see me go, but they understand me, and what drives me. I have fulfilled my duties to them and now I am on a mission of self. It is this way because it must be.~
= ~But we have talked enough, for now. Dwelling on my home will bring melancholy and that would be a disservice to your mission.~
END
IF ~~ THEN REPLY ~Alright then. We're off.~ EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrelTalk","GLOBAL",2)~
THEN Borelios OrelBant2
~I would like to know more about this Imoen, if you do not mind speaking of her.~[PM_Orelx]
DO ~IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
IF ~~ THEN REPLY ~We grew up together in Candlekeep. She was a surrogate sister, and a great friend.~ + OrelBant2-1
IF ~~ THEN REPLY ~Imoen and I were the only children within Candlekeep. She was into mischief more often than not, but she made the place easier to bear.~ + OrelBant2-1
IF ~~ THEN REPLY ~She was annoying creature. I forget why I ever accepted her company.~ + OrelBant2-2
IF ~~ THEN REPLY ~I do mind. Leave me be, Orelios.~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-1
~Hmm, yes. How did you end up on the road as adventurers, then? Did Candlekeep prove too small to hold you?~
END
IF ~~ THEN REPLY ~It did, but there were other factors. Our foster father Gorion took me away to keep me safe, but to no avail.~ + OrelBant2-3
IF ~~ THEN REPLY ~My foster father kept me in that place to save me from the power of my lineage. Fate had other plans.~ + OrelBant2-5
IF ~~ THEN REPLY ~It was an accident of sorts. We departed the keep but Gorion, our guardian, was killed. Our ability to return died with him. We had no choice.~ + OrelBant2-4

CHAIN
IF ~~ THEN Borelios OrelBant2-2
~Surely she must have been some use to you, if she managed up until your arrival in Amn.~
END
IF ~~ THEN REPLY ~She was a halfway decent thief until she decided to try her hand at magic. She wasn't the best at anything, but she was useful I suppose.~ + OrelBant2-G

CHAIN
IF ~~ THEN Borelios OrelBant2-3
~To keep you safe from what? What happened?~
END
IF ~~ THEN REPLY ~We were accosted by a murderous band led by a man named Sarevok, my brother, who sought the power in our lineage. He killed Gorion to get to me, but I escaped.~ + OrelBant2-5
IF ~~ THEN REPLY ~It is a sensitive subject. You must promise not to speak of this to anyone.~ + OrelBant2-6
IF ~~ THEN REPLY ~I do not wish to speak of it. We must end this conversation.~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-4
~That does not sound like an accident to my ears. From your tone I take it this was not simple happenstance.~
END
IF ~~ THEN REPLY ~It wasn't. Gorion sought to safeguard me on our journey, but he failed.~ + OrelBant2-3

CHAIN
IF ~~ THEN Borelios OrelBant2-5
~"Power of my lineage"? I don't understand...~
END
IF ~~ THEN REPLY ~I will explain this to you, but you must swear to keep this knowledge secret.~ + OrelBant2-6
IF ~~ THEN REPLY ~Gorion was killed by my brother, who sought to kill me in order to claim the power of our father, Bhaal.~ + OrelBant2-7
IF ~~ THEN REPLY ~Forget I said anything. Let's just keep walking.~ + PM_OrelEx2-1

CHAIN
IF ~~
THEN Borelios OrelBant2-6
~You have my word. Tell me.~
DO ~SetGlobal("PMBloodPromise","GLOBAL",1)~
END
IF ~~ THEN REPLY ~Gorion was killed by my brother, who sought to kill me in order to claim the power of our father, Bhaal.~ + OrelBant2-7

CHAIN
IF
~~
THEN Borelios OrelBant2-7
~"The Lord of Murder shall perish, but in his doom he shall spawn a score of mortal progeny, chaos will be sown by their passage." So Alaundo's prophecy has come to fruition.~
= ~I am not sure of what to say.~
DO ~SetGlobal("PM_Bhaalspawn","GLOBAL",1)~
END
IF ~~ THEN REPLY ~It sounds bad, I know. But believe me when I say I'm doing my damnedest to make right of this.~ + OrelBant2-8
IF ~~ THEN REPLY ~Hey, neither am I! I'm just trying to keep my head down. I didn't ask for this.~ + OrelBant2-9
IF ~~ THEN REPLY ~What's to be said? I have been given a spectacular opportunity. Great power awaits me.~ + OrelBant2-0
IF ~~ THEN REPLY ~There's nothing to say. We're done here.~ EXIT

CHAIN
IF ~~ THEN Borelios OrelBant2-8
~In that case, I will do my best to assist you. I must think on this for awhile. Thank you for being candid with me.~
END
IF ~~ THEN REPLY ~We'll talk more later.~ EXIT

CHAIN
IF ~~ THEN Borelios OrelBant2-9
~If what Alaundo wrote is true, then that will not be possible. One of your kin has come for your blood, there will surely be more.~
= ~You will have to see this through to whatever end it comes to.~
END
IF ~~ THEN REPLY ~I can hope, can't I?~ + OrelBant2-A
IF ~~ THEN REPLY ~I suppose you're right. I am not sure I'll have the power to do so.~ + OrelBant2-B

CHAIN
IF ~~ THEN Borelios OrelBant2-0
~Tread carefully. I doubt Bhaal would have planned this far ahead only to leave his power to be usurped by a mortal.~
END
IF ~~ THEN REPLY ~Who's to say that? Who's to say Bhaal wasn't just a mindless hedonist?~ + OrelBant2-C
IF ~~ THEN REPLY ~Oh, I intend to. But make no mistake, I am more than capable of meeting whatever challenges lay before me.~ + OrelBant2-D

CHAIN
IF ~~ THEN Borelios OrelBant2-A
~Doubtful. We are dealing with the will of Gods, here. But if it will allay your fears, I will be at your side to help you.~
END
IF ~~ THEN REPLY ~Ah, fine. Into the fray, then.~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-B
~You've made it this far, haven't you? Have some faith. If not for yourself, then for your friends.~
END
IF ~~ THEN REPLY ~Well, when you put it that way... I might as well try. Lead on.~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-C
~Those flush with power will seek ways to retain it, and the Gods are ever scheming.~
END
IF ~~ THEN REPLY ~And yet he has already lost his power - Bhaal is dead now, his domain passed to Cyric.~ + OrelBant2-F

CHAIN
IF ~~ THEN Borelios OrelBant2-D
~Maybe so, but I would not be so overly confident. Hubris has felled those even greater than you, your father among them.~
END
IF ~~ THEN REPLY ~Fair enough, but you'll see that I'm right, in time.~ + PM_OrelEx2-2
IF ~~ THEN REPLY ~Hmph, you should have more faith. I am close, I can feel it.~ + PM_OrelEx2-2

CHAIN
IF ~~ THEN Borelios OrelBant2-E
~The Realms are rife with nigh-unbelievable things. Try me.~
END
IF ~~ THEN REPLY ~I will explain this to you, but you must swear to keep this knowledge secret.~ + OrelBant2-6
IF ~~ THEN REPLY ~Gorion was killed by my brother, who sought to kill me in order to claim the power of our father, Bhaal.~ + OrelBant2-7
IF ~~ THEN REPLY ~Forget I said anything. Let's just keep walking.~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-F
~We must be wary of Cyric, then. Realize that all I'm saying is that, your lineage being what it is, we should be careful. We are bound to attract the attention of beings far greater than ourselves.~
END
IF ~~ THEN REPLY ~You worry entirely too much. Stick with me, Orelios. We shall best all comers.~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-G
~Hmn, you ought to be more appreciative of others' talents. I doubt you could have accomplished alone what you have with others.~
END
IF ~~ THEN REPLY ~You seem to always doubt me. I will show you, one day, provided you're here to see it.~ + OrelBant2-D
IF ~~ THEN REPLY ~I tire of your wordiness. Begone from my vicinity.~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios PM_OrelEx2-1
~As you would have it.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx2-2
~Perhaps. We have argued enough, we should continue our journey.~
END
IF ~~ THEN REPLY ~After you.~ EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrelTalk","GLOBAL",3)~
THEN Borelios OrelBant3
~So, your brother, the one who killed Gorion and sent you on the run... You said his name was Sarevok?~
DO ~IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
++ ~Yes, what of it?~ + OrelBant3-2
++ ~I don't really want to talk about him right now, Orelios.~ + PM_OrelEx3-1

CHAIN
IF ~~ THEN Borelios OrelBant3-2
~I have been mulling over that name since you spoke of him, before. It stuck in my mind and I have only just discerned the reason.~
END
++ ~What reason would that be?~ + OrelBant3-3
++ ~Let me guess. You met him in your travels once.~ + OrelBant3-4

CHAIN
IF ~~ THEN Borelios OrelBant3-3
~I remember now, there was much commotion over the arrival of a man with such a name within the merchant community in Baldur's Gate, when I was travelling through some months ago. I hadn't thought it to be the same man.~
END
++ ~Wait just a minute, you were in Baldur's Gate? Why didn't you tell me this before?~ + OrelBant3-5
++ ~Aye, he came to prominence in a group called the Iron Throne. Originally they were a merchant conglomerate, given to violent and treacherous means to further their goals. Sarevok bent them to his own will.~ + OrelBant3-7
++ ~Surely you must have heard of me, as well. I foiled Sarevok's schemes and killed him, to much fanfare.~ + OrelBant3-6
++ ~Yes, that's fascinating. Can we please focus on the task at hand?~ + PM_OrelEx3-1

CHAIN
IF ~~ THEN Borelios OrelBant3-4
~That is not the case, at least to my knowledge. The name came up at some point during a stay in Baldur's Gate. He was the subject of admiring gossip, as I recall.~
END
++ ~Why would you wait this long to tell me you had visited Baldur's Gate? Did I not tell you of my history there?~ + OrelBant3-5
++ ~What did you hear of him?~ + OrelBant3-7
++ ~Have you heard of me in the same way? My exploits in the region were of some renown.~ + OrelBant3-6
++ ~I hate to cut this short, but we have more pressing matters to attend to than reminiscing over my dead brother.~ + PM_OrelEx3-1

CHAIN
IF ~~ THEN Borelios OrelBant3-5
~Would you be so quick to accuse me of treachery? I have been to many places, <CHARNAME>. I stayed in Baldur's Gate for a time, after a... mishap I had suffered on the road. It is a large and metropolitan city, as you well know. I found it a suitable place to recuperate.~
END
++ ~Oh? What sort of mishap did you encounter?~ + OrelBant3-8
++ ~I find it quite convenient that you would be there during my first days an adventurer and also here, now.~ + OrelBant3-9

CHAIN
IF ~~ THEN Borelios OrelBant3-6
~Not that I can remember. I must have left the city after your triumphs, if it is as you say.~
END
++ ~What were you doing in Baldur's Gate, exactly?~ + OrelBant3-8
++ ~Sorry to disappoint you but I think it's best if we left this conversation for another time.~ + PM_OrelEx3-2

CHAIN
IF ~~ THEN Borelios OrelBant3-7
~As I said, there was much talk of him when I arrived in the city. Quite charismatic, by the sound of it, and ambitious.~
END
++ ~He lusted after the power of our father, and he used the extensive clout of the Iron Throne to manufacture a conflict between Baldur's Gate and Amn, so as to prove himself worthy of it. Luckily for the Sword Coast, I stopped him before that could happen.~ + OrelBant3-10

CHAIN
IF ~~ THEN Borelios OrelBant3-8
~It is a, ah, long story. I will tell it all, if you wish to hear.~
END
++ ~By all means, go ahead.~ + OrelBant3-11
++ ~Can you give me a short version?~  +OrelBant3-12
++ ~No, that's quite alright. It is the present that matters, not the past. Let's not tarry further.~ + PM_OrelEx3-2

CHAIN
IF ~~ THEN Borelios OrelBant3-9
~Is it so hard to fathom? I'm sure there are hundreds of people who have traced your path, in a roundabout way, for reasons that have nothing to do with you or your past. It was happenstance and nothing more. I'll tell you why I was in Baldur's Gate, if it will help calm your nerves.~
END
++ ~Okay, let's hear it.~ + OrelBant3-11
++ ~Quickly, please. My time is precious.~ + OrelBant3-12
++ ~Forget it, we've better things to worry about.~ + PM_OrelEx3-1

CHAIN
IF ~~ THEN Borelios OrelBant3-10
~Indeed? I do recall the cryers announcing that war had been narrowly averted. Impressive work by any measure, friend. You saved many thousands of lives.~
END
++ ~I did what I had to do. So why were you in Baldur's Gate, then? Tell me that.~ + OrelBant3-8
++ ~Eh, it was much more exciting in the doing than in the basking afterwards. I'm glad to be out and about again. What of you? What brought you to Baldur's Gate?~ + OrelBant3-8

CHAIN
IF ~~ THEN Borelios OrelBant3-11
~As you know, I come from Aglarond, originally, far to the east. I had chartered a ship from Aglarond to Sembia, and from there moved on foot through Cormyr, and then through the Fields of the Dead, hoping to make my way to the Sword Coast.~
= ~I was making my way along the Chionthar, a good day's walk to the east of Baldur's Gate, I would wager, when I came across a young man on the side of the road, clutching his leg. He called for help and beckoned me, but it wouldn't have taken a sage to figure something was amiss.~
END
++ ~How could you be so sure that it was not a person in genuine need?~ + OrelBant3-14
++ ~Bandits are not known for having a great variety of tricks.~ + OrelBant3-13
++ ~Ah, the old bait-and-switch. Had a bit of fun, did you?~ + OrelBant3-13

CHAIN
IF ~~ THEN Borelios OrelBant3-12
~On the way to the Sword Coast from Aglarond I was accosted by bandits, and though I escaped unscathed I lost an object of great importance to me, a keepsake from the mother of my children. It was a matter of a few weeks before I could track down the culprits, but I retrieved what was mine. It was during this time that I heard of Sarevok and the iron shortage.~
END
++ ~They are connected, as you may know. Sarevok tainted the nearby iron mines with alchemy to instill mutual suspicion between Baldur's Gate and Amn.~ + OrelBant3-15
++ ~You've come along way, Orelios. Let's get going, we're holding up the party with this chatter.~ + PM_OrelEx3-1

CHAIN
IF ~~ THEN Borelios OrelBant3-13
~I knew what lay in store - the man was on the south side of the road, which was flanked on the north by tall grasses, high enough to hide a humanoid figure. I ignored the man and continued walking, hoping that his fellows had not thought to cover the road ahead. Sure enough, a larger figure, some half-breed ogre, slipped out of the grass ahead of me, gripping an axe. The faker pursued behind me some ways away.~
= ~There were only the two of them. That was my saving grace - as a man with only a satchel of supplies on his person, I seemed an easy target. They allowed themselves to get sloppy.~
= ~The ogre was easy enough to dispatch. One dodged swing and I was able to land a well-placed strike to the sternum. You strike just the right spot with your palm at just the right angle and you can knock the air right out of an opponent and still the lungs for awhile. Not a killing blow, but a chance to get a fight off on the right footing.~
= ~The "injured" man was already upon me at this point, much to my chagrin. I was unable to sidestep his charge, and he caught me in the side with his dagger. We wrestled, I pulled the knife from my side and became surprised at my own strength as the blade bent and fractured with a twist of my hand.~
END
++ ~The iron shortage must have been at full swing by that point - anything metal that wasn't enchanted ran the risk of becoming brittle in those days.~ + OrelBant3-16

CHAIN
IF ~~ THEN Borelios OrelBant3-14
~<CHARNAME>, please. I had been known to set such an ambush such as that, in my younger days. No real attempts were made to mask it - nothing around he could have injured himself with or on, no pack animals, no companions. He was still wearing his armor. That sort of poor showing would have earned a whipping from my drillmaster.~
END
++ ~Hmm, I see. continue.~ + OrelBant3-13

CHAIN
IF ~~ THEN Borelios OrelBant3-15
~I had not known that, but it makes sense. Thank the Gods you were around to prevent it from getting out of hand.~
END
++ ~Oh, I've got plenty more where that came from. Come, many heroic deeds await us.~ + PM_OrelEx3-2
++ ~Well, now we know each others' full stories. Does all of this sate your curiosity?~ + PM_OrelEx3-3

CHAIN
IF ~~ THEN Borelios OrelBant3-16
~Indeed, as I would learn later. Without his weapon, the bandit was useless in combat. I subdued him and ran, so as to get enough space between myself and the highwaymen to discourage pursuit. I move much faster on foot than a normal man, as I'm sure you've noticed.~
END
++ ~Aye. So I suppose you hoofed it to a healer, then?~ + OrelBant3-17
++ ~That cannot have been the last of it. Unless your intent was to bore, of course.~ + OrelBant3-18
++ ~You just left them? After they had tried to murder you?~ + OrelBant3-19

CHAIN
IF ~~ THEN Borelios OrelBant3-17
~Actually by that point in my journeys I had begun to intuit old techniques of control over the body - the first thing you discover is the ability to control blood flow and accelerate the natural healing process through concentration. The dagger wound I had suffered was survivable in any case, since the idiot had not thought to glaze the blade in poison or offal. Regardless, I ran to Baldur's Gate only to discover upon entry into the city that the commotion of the attack had ripped a hole in my satchel.~
= ~I had lost a few replaceable rations, but more important was a carved statuette of Rillifane Rallathil that had been made and given to me by my beloved Sylmae as a show of faith in me, in my journey.~
END
++ ~Had you anything else to remember your family by?~ + OrelBant3-20
++ ~I pity the fool robbers. What did you do next?~ + OrelBant3-21

CHAIN
IF ~~ THEN Borelios OrelBant3-18
~Certainly not.~
= ~By that point in my journeys I had begun to intuit old techniques of control over the body - the first thing you discover is the ability to control blood flow and accelerate the natural healing process through concentration. The dagger wound I suffered was survivable in any case, since the idiot had not thought to glaze the blade in poison or offal. Regardless, I ran to Baldur's Gate only to discover upon entry into the city that the commotion of the attack had ripped a hole in my satchel.~
= ~I had lost a few replaceable rations, but more important was a carved statuette of Rillifane Rallathil that had been made and given to me by my beloved Sylmae as a show of faith in me, in my journey.~
END
++ ~Had you anything else to remember your family by?~ + OrelBant3-20
++ ~I pity the fool robbers. What did you do next?~ + OrelBant3-21

CHAIN
IF ~~ THEN Borelios OrelBant3-19
~Discretion is the better part of valor. I could easily faze them and flee, but slaying them alone in those circumstances would have been a difficult and dangerous task. I chose to retreat with minimal risk or loss incurred. Or so I had thought at the time.~
= ~By that point in my journey I had begun to intuit old techniques of control over the body - the first thing you discover is the ability to control blood flow and accelerate the natural healing process through concentration. The dagger wound I had suffered was survivable in any case, since the idiot had not thought to glaze the blade in poison or offal. Regardless, I ran to Baldur's Gate only to discover upon entry into the city that the commotion of the attack had ripped a hole in my satchel.~
= ~I had lost a few replaceable rations, but more important was a carved statuette of Rillifane Rallathil that had been made and given to me by my beloved Sylmae as a show of faith in me, in my journey.~
END
++ ~Had you anything else to remember your family by?~ + OrelBant3-20
++ ~I pity the fool robbers. What did you do next?~ + OrelBant3-21

CHAIN
IF ~~ THEN Borelios OrelBant3-20
~I did. Some simple beadwork from my daughters, hard clay imprints of their infant feet. But I could simply not bear to lose that statuette... It meant too much to Sylmae, to both of us. So I resolved to get it back.~
= ~I called in a favor... An old friend in the service had decamped all the way to the Cloakwood, to live in the rustic lifestyle of her ancestors and watch over the land. Together we tracked bandit activity through the Fields of the Dead for over a week, until we came upon the highwaymen. By Tymora's grace, the ogre had kept it for himself. I took it from his corpse.~
= ~So that's what I was doing in Baldur's Gate, months ago. Were it not for my carelessness I would have passed through much faster - I may not have even been in Amn at the time you found me. Fate has a plan for me, it would seem.~
END
++ ~Well I'm glad you found your idol, and that fate has brought you to the group.~ + PM_OrelEx3-4
++ ~That makes two of us. That was quite a tale, Orelios. Thanks for sharing it.~ + PM_OrelEx3-5
++ ~Well at least you got the bastards back. Serves them right, foolish amateurs.~ + PM_OrelEx3-6
++ ~Hmph, likely story. I've still got my eye on you, monk.~ + PM_OrelEx3-7

CHAIN
IF ~~ THEN Borelios OrelBant3-21
~I called in a favor... An old friend in the service had decamped all the way to the Cloakwood, to live in the rustic lifestyle of her ancestors and watch over the land. Together we tracked bandit activity through the Fields of the Dead for over a week, until we came upon the highwaymen. By Tymora's grace, the ogre had kept it for himself. I took it from his corpse.~
= ~So that's what I was doing in Baldur's Gate, months ago. Were it not for my carelessness I would have passed through much faster - I may not have even been in Amn at the time you found me. Fate has a plan for me, it would seem.~
END
++ ~Well I'm glad you found your idol, and that fate has brought you to the group.~ + PM_OrelEx3-4
++ ~That makes two of us. That was quite a tale, Orelios. Thanks for sharing it.~ + PM_OrelEx3-5
++ ~Well at least you got the bastards back. Serves them right, foolish amateurs.~ + PM_OrelEx3-6
++ ~Hmph, likely story. I've still got my eye on you, monk.~ + PM_OrelEx3-7
CHAIN
IF ~~ THEN Borelios PM_OrelEx3-1
~If you say so.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-2
~As you say.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-3
~I suppose it does. Thank you.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-4
~As am I, <CHARNAME>, as am I.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-5
~It was my pleasure. Back to the task, then.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-6
~Indeed. They earned what they received.~
= ~Ah, but that is enough talking. Let's continue on.~
END
++ ~Good.~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-7
~Expend your energy in whatever manner you like, <CHARNAME>. I've nothing to hide from you.~
END
++ ~We'll see.~ EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrelTalk","GLOBAL",4)~
THEN Borelios OrelBant5
~I have been reflecting on my brief time as an adventurer, lately. I have seen much more violence on the road than I had in the service, if you can believe that.~
DO ~IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
++ ~I would have thought military life would have prepared you in some way for this sort of constant conflict.~ + OrelBant5-2
++ ~Your martial training must have given you some edge, at least.~ + OrelBant5-3
++ ~I can't talk right now, Orelios.~ + PM_OrelEx1-1

CHAIN
IF ~~ THEN Borelios OrelBant5-2
~You would think so, wouldn't you? But I served in a time of relative peace. Thay always rattled its sabres and sent unofficial, deniable skirmishes our way but... It was quiet.~
END
++ ~I can imagine living near Thay must have made people quite paranoid.~ + OrelBant5-4
++ ~What a waste! What's the point of joining the army if you so rarely see combat?~ + OrelBant5-5
++ ~Why did you leave the army, anyway? Why become a monk?~ + OrelBant5-6

CHAIN
IF ~~ THEN Borelios OrelBant5-3
~Ah, but since I've become an ascetic, I employ relatively few of the skills I learned as a scout. For the most part it is entirely different.~
END
++ ~I was wondering, actually, why you became a monk in the first place. It seems like an odd choice to make, given the circumstances.~ + OrelBant5-6

CHAIN
IF ~~ THEN Borelios OrelBant5-4
~Mistrustful of magic, certainly, and wary of strangers. But not paranoid, nor malicious.~
END
++ ~How did a scout in the army become a monk? That's a strange career path.~ + OrelBant5-6

CHAIN
IF ~~ THEN Borelios OrelBant5-5
~Oh, we served a purpose. Aglarondan society is... rather informal. In times of peace the garrison served as constabulary for the countryside. And there were all manner of domestic threats to monitor and deal with.~
END
++ ~In that case, why leave? Why leave the army, and your family, and become a monk?~ + OrelBant5-6
++ ~I appreciate the cultural tutoring, but there are things we should be getting to.~ + PM_OrelEx1-1

CHAIN
IF ~~ THEN Borelios OrelBant5-6
~Well, it is a long story. I was some ways into my martial life when I decided to pursue this path. By then I had met Sylmae and we had borne our daughters.~
END
++ ~It couldn't have been as simple as "deciding". You must have known becoming an ascetic would have brought you away from them.~ + OrelBant5-7
++ ~What sort of monk has a family? Surely that is highly unusual.~ + OrelBant5-8
++ ~Yes, but why a monk? Why not some more straightforward martial discipline?~ + OrelBant5-9

CHAIN
IF ~~ THEN Borelios OrelBant5-7
~As I have said, it was something I had to do.~
END
++ ~By what compulsion? This doesn't make sense. There is something you are not telling me.~ + OrelBant5-10
++ ~Why become a monk when you had a family? I don't understand.~ + OrelBant5-8

CHAIN
IF ~~ THEN Borelios OrelBant5-8
~It was unusual, yes, but these things are not always simple or straightforward. I became a monk because the circumstances warranted it and I was well-suited to it.~
END
++ ~What exactly do you mean by that?~ + OrelBant5-10

CHAIN
IF ~~ THEN Borelios OrelBant5-9
~Because my time with the military had come to an end. There was no sense in my pursuing such a career further.~
END
++ ~Why not? You're dancing around the truth, Orelios. Come clean.~ + OrelBant5-10

CHAIN
IF ~~ THEN Borelios OrelBant5-10
~Look, <CHARNAME>. I have always had an... idiosyncratic way of looking at things. That much was apparent from my earliest days. When I reached a certain point in my life, when I had just started my family, it was decided that my particular talents and temperament were well-suited to the sort of introspective discipline that an ascetic adheres to.~
= ~I was... Repurposed. So I left my old ways behind. Eventually I had to leave my family behind as well.~
END
++ ~The decision was made for you. That is what you're implying, is it not?~ + OrelBant5-11

CHAIN
IF ~~ THEN Borelios OrelBant5-11
~... Yes. That is the right of it.~
END
++ ~I still do not understand. Who would set you on this path? And why would you agree to it?~ + OrelBant5-12
++ ~I think you had better explain yourself.~ + OrelBant5-13

CHAIN
IF ~~ THEN Borelios OrelBant5-12
~My superiors. I was a competent scout, but my even temperament and strict adherence to orders were especially noted.~
DO~SetGLOBAL("PMOrelSpy","GLOBAL",2)~
= ~It was decided that I possessed the qualities deemed optimal in clandestine agents in service of the Symbul, a service we call the Symbulmyn. I was removed from my unit and given options as to how I would go about my service.~
= ~So I chose to become a monk. It suited me, it was inconspicuous enough to provide sufficient cover on the road, and it made travel uncomplicated.~
END
++ ~You're an Aglarondan spy? Why are you telling me this?~ + OrelBant5-15
++ ~That answers a great many questions... So, why is an Aglarondan spy here in Amn?~ + OrelBant5-16
++ ~And I don't suppose your acceptance of my offer to travel with my group was a coincidence. Has this "Symbulmyn" sent you after me, then?~ + OrelBant5-14

CHAIN
IF ~~ THEN Borelios OrelBant5-13
~As you know, I was not always as I am now. Some years into my career as a scout, my superiors took notice of my... particularly fervent fidelity to chain of command and my missions.~
DO~SetGLOBAL("PMOrelSpy","GLOBAL",2)~
= ~It was decided that I possessed the qualities deemed optimal in members of what we call the Symbulmyn - a sort of... covert group in service to Aglarond and the Symbul. I was removed from my unit and given options as to how to proceed.~
= ~So I chose to become a monk. It suited me, it was inconspicuous enough to provide sufficient cover on the road, and it made travel uncomplicated.~
END
++ ~I suppose there's some reason you're revealing all this now?~ + OrelBant5-15
++ ~I see... So why are you here in Amn, then?~ + OrelBant5-16
++ ~Have you been monitoring me, for your "superiors"?~ + OrelBant5-14

CHAIN
IF ~~ THEN Borelios OrelBant5-14
~Don't be ridiculous, <CHARNAME>. I imagine the Bhaalspawn phenomenon is known to them, but you are not why I'm here.~
END
++ ~Why are you here, then?~ + OrelBant5-16

CHAIN
IF ~~ THEN Borelios OrelBant5-15
~If I am to travel with this group and fulfill my duties both, they must be known to you. I have traveled with you long enough to trust that you are not in league with our enemies, so I felt comfortable with the risk.~
= ~Besides, there are few better covers that one could ask for than local adventurer.~
END
++ ~So we've got all that out in the open. What happens now?~ + OrelBant5-17

CHAIN
IF ~~ THEN Borelios OrelBant5-16
~I have no specific mission, not at the moment. I spent some months in Sembia assisting in operations there before being reassigned to Amn. My instructions are to stay put and report on any activities that threaten the Aglarondan state.~
= ~As yet I have encountered none, but I am not impatient.~
END
++ ~Why take the risk of telling me this?~ + OrelBant5-15
++ ~What am I to do with this information?~ + OrelBant5-17

CHAIN
IF ~~ THEN Borelios OrelBant5-17
~I see no reason why we shouldn't continue to travel together. But if you would rather not risk the liability of having someone in my position within the party, or you feel slighted, I am prepared to leave.~
= ~The decision is yours to make.~
END
++ ~This will not come between us. I appreciate your candor, and wish you to remain with the group.~ + PM_OrelEx5-1
++ ~I agree, this changes nothing. Let us continue as we were.~ + PM_OrelEx5-1
++ ~This is an awful lot to drop in my lap. Perhaps you should leave, for a time at least. I will find you, should I need you again.~ + PM_OrelEx5-2
++ ~Do you expect me to abide by this? I will not have a spy in my group. Leave.~ + PM_OrelEx5-2


CHAIN
IF ~~ THEN Borelios PM_OrelEx5-1
~Lead on, then.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx5-2
~I will return to the Copper Coronet, then.~
= ~Until next time, if there is a next time.~
END
IF ~~ THEN DO ~LeaveParty() SetGlobal("OreliusJoinrf","LOCALS",0) EscapeAreaMove("AR0406",1857,957,3)~ EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
GlobalGT("PMOrelTalk","GLOBAL",4)
LevelGT(Myself,12)~
THEN Borelios PM_Abil1
~<CHARNAME>, I have made something of a breakthrough in my training, something that could be of some use to us in battle. I will tell you of it if you wish to hear it.~
DO ~SetGlobal("PM_OrelAbility","GLOBAL",2) IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
++ ~Alright, tell me.~ + PM_Abil1-2
++ ~I don't particularly wish to hear of it. Just show me it when we might actually use it.~ + PM_OrelEx4-1

CHAIN
IF ~~ THEN Borelios PM_Abil1-2
~Yes, well, first I should explain the nature of my pursuits.~
= ~As you know, I am a warrior monk, an ascetic. My life as it is now is a... journey of discovery, you might say. I have done away with the things that most would rely upon in battle because as formidable as they are, they are ultimately a crutch - they serve as barriers between the warrior and his environment, in so many ways. They require intense energy and focus to master, they absorb harm, they do the lifting, so to speak, in battle.~
= ~Ascetics do not concern themselves with such things. We do not seek extrinsic tools to meet our needs, and we recognize that the truest warrior, the perfect warrior, relies only upon himself in all things. This perfection is our purpose as monks.~
END
++ ~Go on.~ + PM_Abil1-3

CHAIN
IF ~~ THEN Borelios PM_Abil1-3
~To achieve perfection, we must master three things. The first is absolute discipline of body. The common warrior sees his body as a fragile thing to be protected or utilized in service of some extrinsic instrument. These conceptions are limiting. They fail to realize that the body is, in itself, the most potent instrument at one's disposal. If one masters it, if one ignores all else and devotes oneself to its cultivation, <PRO_HESHE> is capable of things unimaginable to the common warrior. <PRO_HISHER> fists can strike harder than any hammer and cut deeper than any blade, move with blinding speed, and exploit weaknesses that the undisciplined ignore or fail to see. <PRO_HESHE> can sidestep, glance off, or simply deny even the heaviest blow, and effortlessly resist wounds, poisons and contagions.~
= ~The second mastery is absolute discipline of mind. Through meditation and examination, we devote ourselves to discovering and understanding our consciousness. One realizes that the greatest force at our disposal, that from which all manipulations and affects we impress upon our world originate, is our will. In many ways it is as a muscle - it can be massaged, extended, exerted, little by little, to make it ever stronger. As the will becomes more substantial and resilient, it becomes capable of exerting itself in such a way that it bends or breaks the rules that bind the natural world, in a manner similar in some ways to magic. The ascetic can, through experience and discipline, ignore to some extent the things that bind and subdue normal men - force, gravity, and time.~
= ~The third and final mastery is absolute discipline of spirit. Like the mind and body, the spirit can be honed and cultivated, and over time an ascetic learns to resist those things that seek to dominate or affect it. The greatest ascetics that we know of have mastered themselved to such an extent that they have defied the natural world entirely, becoming literally supernatural and untethered to the material plane.~
END
++ ~I do not understand. You accomplish all this just by focus and meditation?~ + PM_Abil1-4
++ ~Hmm, I see. So what have you accomplished, then? You don't seem supernatural, not yet at least.~ + PM_Abil1-5
++ ~That is... quite a lot of exposition. So what 'breakthrough' have you made? It had better be good, to make me sit through that.~ + PM_Abil1-5

CHAIN
IF ~~ THEN Borelios PM_Abil1-4
~It is not as simple as that. We gain our knowledge and ability in the same manner as everyone else - life experience and battle. All the meditations and self-reflections in the world are useless without experiences to provide lessons and context.~
END
++ ~Alright, so what is this newfound ability that you've developed, then?~ + PM_Abil1-5

CHAIN
IF ~~ THEN Borelios PM_Abil1-5
~I have already cultivated many ascetic techniques on my path - I can exploit weaknesses to debilitate mortal combatants, I can heal non-fatal wounds and ignore some magic and disease. This recent discovery has been in the second pursuit, the discipline of mind.~
= ~I believe I have made my first tentative steps toward affecting the material world through will alone. Specifically, I believe that if I project my mind outwards, I can interfere with the senses of others, to a small degree.~
END
++ ~How do you mean?~ + PM_Abil1-6

CHAIN
IF ~~ THEN Borelios PM_Abil1-6
~By bending the air and space around me, I can make it more difficult for others to strike me, for a time at least. A skilled opponent could dispense with this defense quickly enough, and one with the ability to discern true reality via whatever means would see right through it, but it should prove useful in combat nonetheless.~
END
++ ~That sounds excellent. Whatever edge we can gain in combat is welcome.~ + PM_OrelEx4-2
++ ~I see. I don't know how useful that could prove but I suppose it can't hurt.~ + PM_OrelEx4-2
++ ~Uh huh, whatever, guy. Just make good use of it.~ + PM_OrelEx4-3

CHAIN
IF ~~ THEN Borelios PM_OrelEx4-1
~Alright.~
= ~(*Orelios has gained the "Denial of Sight" ability. It is functionally identical to the mage spell "Mirror Image" and is usable once per day from the innate abilities tab.*)~
DO ~AddSpecialAbility("PMmirro")~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx4-2
~I agree. Let's continue on.~
= ~(*Orelios has gained the "Denial of Sight" ability. It is functionally identical to the mage spell "Mirror Image" and is usable once per day from the innate abilities tab.*)~
DO ~AddSpecialAbility("PMmirro")~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx4-3
~I will do as you say.~
= ~(*Orelios has gained the "Denial of Sight" ability. It is functionally identical to the mage spell "Mirror Image" and is usable once per day from the innate abilities tab.*)~
DO ~AddSpecialAbility("PMmirro")~
END
IF ~~ THEN EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
GlobalGT("PMOrelTalk","GLOBAL",4)
Global("PM_OrelAbility","GLOBAL",2)
LevelGT(Myself,16)~
THEN Borelios PM_Abil2
~I believe I have made more progress in my meditations.~
DO ~SetGlobal("PM_OrelAbility","GLOBAL",3) IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
++ ~Oh? What have you gained now?~ + PM_Abil2-2

CHAIN
IF ~~ THEN Borelios PM_Abil2-2
~I have been meditating consistently as we have traveled, reflecting on our experiences and conflicts. One of the myriad benefits of practicing such meditation is the... clarity of mind that it brings. To the average person it provides a calm and measured state, and a way to better handle stress and the strain of life. An ascetic, however, benefits in greater ways. We constantly seek to understand our relation to the spaces we find ourselves in, and the power we can wield over those spaces, should we gain sufficient wisdom.~
= ~I feel as though I have gained a greater grounding in physical space, a clearer perception of reality, through my meditations. I believe that were we to face enemies who would seek to deceive us through trickery or magic, I may be able to foil them. It takes concentration, but it could be of some use to us.~
END
++ ~Hmm, interesting. I'll let you know if and when we need to utilize this ability of yours.~ + PM_Abil2-3

CHAIN
IF ~~ THEN Borelios PM_Abil2-3
~As you wish. I'm sure it will come in handy.~
= ~*Orelios has gained the "Denial of Deceit" ability. It is functionally identical to the mage spell "Oracle" and is usable once per day from the innate abilities tab. Be aware that this ability will dispel some beneficial party-cast illusions, so use it wisely.*)~
DO  ~AddSpecialAbility("PMdecei")~
END
IF ~~ THEN EXIT

CHAIN
IF ~InParty("jaheira")
Global("PM_JaheiraYell","GLOBAL",1)~
THEN Borelios PMBJahCon-1
~<CHARNAME>, there is something we must speak of.~ DO ~SetGlobal("PM_JaheiraYell","GLOBAL",2)~
END
++ ~Alright. What is it?~ + PMBJahCon-2
++ ~I can't be bothered right now, Orelios.~ + PMBJahEx1

CHAIN
IF ~~ THEN Borelios PMBJahCon-2
~I seem to have... struck a nerve with Jaheira. She is becoming more and more severe.~
== BJAHEIR ~Severe is not the word. Perhaps you will have some luck in getting some sense out of this obstinate fool. It is like drawing water from a stone.~
END
++ ~Alright, let's just stay calm. You had better start from the beginning.~ + PMBJahCon-3
++ ~I swear, some days I don't know why I bother with the hassle of a party. What is it now?~ + PMBJahCon-3
++ ~You know what? No, I don't have time for this. Leave me alone, both of you.~ + PMBJahEx1

CHAIN
IF ~~ THEN Borelios PMBJahCon-3
~We are having difficulties that I had not anticipated. There is a conflict over my decision to-~
== BJAHEIR ~Abandon his loved ones?~
== Borelios ~-set off on an adventure on my own. Frankly I don't know why this is any of her business.~
END
++ ~Well, why did you?~ + PMBJahCon-4
++ ~Let's hear her out, shall we? What exactly is the trouble, Jaheira?~ + PMBJahCon-5
++ ~I don't see how this is any of your concern, Jaheira.~ + PMBJahCon-6
++ ~It's none of my business either. Figure it out amongst the two of you, I want nothing to do with it.~ + PMBJahEx1

CHAIN
IF ~~ THEN Borelios PMBJahCon-4
~I had fulfilled all obligations to my family and I wanted to set off on my own and learn about the world. My girls had come of age, taken on their own lives and duties. Their mother had her work with the church and my days in the legion were long behind me. So I left.~
END
++ ~Surely being part of a family entails far more than simply raising your children and wiping your hands of the life that you had.~ + PMBJahCon-7
++ ~But why adventure? You know how dangerous it is. Do you want to be one of those fathers who left one day never to return?~ + PMBJahCon-8

CHAIN
IF ~~ THEN Borelios PMBJahCon-5
~I would rather-~
== BJAHEIR ~I am deeply troubled by the cavalier attitude that Orelios has taken with regard to those around him. The life of an adventurer is not for those with such attachments. It is a selfish, callous path to take. He has no regard for the people he is responsible for.~
== Borelios ~That is completely untrue.~
END
++ ~That sounds like a reasonable enough complaint. What do you have to say for yourself, Orelios?~ + PMBJahCon-4
++ ~But surely Orelios sought the permission of his family before he left them.~ + PMBJahCon-9
++ ~So why did you decide on a life of adventure, Orelios?~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-6
~Thank you, <CHARNAME>~
== BJAHEIR~How can I be expected to rely upon this man in times of trial when he has needlessly abandoned those who have need of him?~
== Borelios ~I have done no such thing. They had no need of me, not anymore. I would not have taken the risk if it had been on anyone other than myself.~
END
++ ~But surely your family does assume some risk? I find it difficult to believe that they do not have some stake in your returning to them someday. What happens if you don't?~ + PMBJahCon-8
++ ~I would think that your family would always have need of you.~ + PMBJahCon-7
++ ~I don't understand, what was the impetus to leave in the first place?~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-7
~My children will always be my children, that is true. But we were never a typical family. Sylmae and I never married, we never even lived together, and even after she had the twins I had to move about in service of my country. I have been as present as I can, given all that I can, but they have always done well, flourished even, without me.~
= ~I was always meant to travel, but I remained as close as I could until my children were no longer dependent upon me. Meriel lives as I once did, as a scout for the state. Lydia serves under her mother in the church of Rillifane. They have no need for my guidance anymore.~
END
++ ~Shouldn't you have stayed even then? Sylmae must have desired your presence.~ + PMBJahCon-11
++ ~What do you mean you were "always meant to travel"?~ + PMBJahCon-12

CHAIN
IF ~~ THEN Borelios PMBJahCon-8
~I thought we had gone over this...~
== BJAHEIR ~That is precisely my point! How does he reconcile himself to that possibility?~
== Borelios ~I am well into middle age, <CHARNAME>. In the grand scheme of things my death is not that far ahead of me, adventure or no. I had fulfilled my obligations to my family, I had a chance to see the world at large, and I took it. That's all.~
END
++ ~Is that not cavalier? Your debts to your family go beyond raising them.~ + PMBJahCon-7
++ ~I still don't understand why you would leave. Why the need to depart Aglarond and come here?~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-9
~Yes, I did. I would not have left otherwise. They understand why I needed to go.~
END
++ ~And why was that?~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-10
~Because it was required of me.~
END
IF ~Global("PM_OreliosWhom","GLOBAL",0)~ THEN REPLY ~By whom?~ + PMBJahCon-13

CHAIN
IF ~~ THEN Borelios PMBJahCon-11
~Sylmae and I... We have always loved one another and always will, but we have lived largely separate lives away from our daughters. That may be difficult to understand, but it is the truth. I have asked her many times to suffer my absence, perhaps too many, and this is the longest I have ever made her wait.~
= ~That wait may last until we are both in the afterlife. But she is the strongest woman I know, and she knows me better than anyone. She knows why I am here, away from her, and our children. She accepts it.~
== BJAHEIR ~But does she embrace it?~
== Borelios ~Of course not. But it is my choice, not hers, and she accepts that.~
== BJAHEIR ~And you openly admit to disregarding her? Incredible.~
END
++ ~Why make the choice to leave? Why not stay with her? You obviously wanted to.~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-12
~It was something I knew I had to do, ever since I began life as an ascetic.~
~I had to move beyond Aglarond if I was to take full advantage of my discipline.~
END
++ ~Why, exactly?~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-13
~Whom? No one. Myself. To achieve my full potential as an ascetic I had to make those last painful excisions and let go of the material things that I cared about, become independent. Not permanently, mind you, but I hoped to gain a better understanding of myself and my relations to others by depriving myself of my family, precisely because they meant so much to me.~ DO ~SetGlobal("PM_OreliosWhom","GLOBAL",1)~
== BJAHEIR ~So that is it. You left to escape them.~
== Borelios ~That is not how I would put it. I had to turn away from them, yes. But not because I resented them. And this is only for a time. I fully intend to return.~
END
++ ~And what if you don't return?~ + PMBJahCon-14
++ ~Alright, so now that we all understand one another a little better, can we resolve this dispute? Or are you two going to continue this bickering~ + PMBJahCon-15

CHAIN
IF ~~ THEN Borelios PMBJahCon-14
~I will. I promised I would.~
== BJAHEIR ~Hmph, arrogance.~
END
++ ~Okay, enough of this. Can we put this to bed? I can't take much more of this antagonism in my party.~ + PMBJahCon-15
++ ~Look, let's just get this settled. I'm tired of having to listen to you two.~ + PMBJahCon-15

CHAIN
IF ~~ THEN Borelios PMBJahCon-15
~I had nothing to do with this "conflict". If you wish this to end then Jaheira needs to admit to what she's doing.~
== BJAHEIR ~Admit to what? Are you accusing me of something?~
== Borelios ~Whether you know it or not, you are foisting your misplaced guilt over the death of your husband onto me.~
== BJAHEIR ~You... You have no right!~
== Borelios ~Do you think I would accuse you of such unless I absolutely had to? You have only been unreasonable to me.~
END
++ ~Orelios's right, Jaheira. It's not healthy. Examine yourself and see.~ + PMBJahEx1-2
++ ~That's out of line, Orelios. Jaheira's concerns are perfectly valid. I don't think you are taking her seriously.~ + PMBJahEx1-3
++ ~Alright, I'm not getting involved in this anymore. Can I trust the two of you to hash this out yourselves?~ + PMBJahEx1-4

CHAIN
IF ~~ THEN Borelios PMBJahEx1
~Alright, we'll try and sort this out between us. You won't hear about it again.~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PMBJahEx1-2
~I never meant to agitate you, Jaheira. I think this is a misunderstanding.~
== BJAHEIR~I... I just... *sigh* Perhaps you are both right. I'm... I'm sorry Orelios. I still think you are being at least somewhat callous toward your family but I have gotten entirely too angry about it. I just hope you don't hurt them more than you already have.~
== Borelios ~I'm doing my best not to, Jaheira. I promise you that.~
END
++ ~I'm glad we could resolve this. Back to the road, eh?~ + PMBJahEx1-5

CHAIN
IF ~~ THEN Borelios PMBJahEx1-3
~Hmm... Perhaps you have a point. I do not believe I have done wrong by my family, but... I suppose it is reasonable to suggest that may not be the case.~
== BJAHEIR
~I suggest that you pay greater heed to others in the future. I'm willing to permit you your past mistakes, but the group needs you to think outside yourself at least some of the time.~
END
++ ~Alright, now that we've resolved this, we can focus on different things.~ + PMBJahEx1-5

CHAIN
IF ~~ THEN Borelios PMBJahEx1-4
~I believe you can, but things are going to stay heated for awhile. You may have to take care to separate us for awhile, at least when we make camp.~
== BJAHEIR ~Yes, we will deal with this, though I think we could have used your moderation. Do not expect civility out of us for some time.~
END
++ ~So be it. Let's get back to the task at hand.~ EXIT

CHAIN
IF ~~ THEN Borelios PMBJahEx1-5
~I am glad to put this behind us.~
== BJAHEIR ~Yes, it will be good to function as a group again without strife.~
END
IF ~~ THEN EXIT



CHAIN
IF ~InParty("minsc")
InParty("PMOrel")
See("minsc")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("minsc",CD_STATE_NOTVALID)
Global("PM_MinscGab","GLOBAL",1)~
THEN BMINSC OrelMinB1
~Eh, excuse me Orelios.~
== Borelios ~Hmm? Yes?~
== BMINSC ~Boo seems to think that you are from Aglarond. Is this true?~
== Borelios ~Boo is your... rodent companion? Ah. Yes, Minsc, I hail from Aglarond.~
== BMINSC ~AHA! I have heard of this place! Dynaheir, my witch, used to speak of it!~
== Borelios ~Your witch? You are Rashemi?~
== BMINSC ~We are! Tell me Orelios, what brings you here to Amn? Are you a noble warrior? Do you have dajemmas where you come from? Are you on one as well?~
== Borelios ~Hm, I suppose you could say I am on a "dajemma" of sorts. I travel to learn about myself and the world... As to whether I am noble, I suppose that depends on who you ask.~
= ~How does your own dajemma fare, Minsc?~
== BMINSC ~It is... It is a failure! My witch was murdered and I could do nothing! My mighty heart, it breaks so!~
== Borelios ~Were I you, Minsc, I would not despair. Witch or no, you have proven yourself a capable force against wickedness. Surely that must count for something?~
== BMINSC ~Boo thinks maybe you are right, but still I struggle to keep my tears at bay. Continue on, Orelios, we shall bring the burden of my shame down upon the heads of evil!~
DO ~IncrementGlobal("PM_MinscGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("minsc")
InParty("PMOrel")
See("minsc")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("minsc",CD_STATE_NOTVALID)
Global("PM_MinscGab","GLOBAL",2)~
THEN BMINSC OrelMinB2
~Boo is curious about why you sit so still when we are at camp, Orelios. He would have asked himself, but he did not want to disturb you.~
== Borelios ~When the party sets to rest, I begin my meditations for the day.~
== BMINSC ~How do you do this, eh, meditation?~
== Borelios ~It's a simple matter of concentration and relaxation. Simply focus, and allow your mind to clear. Perhaps you should try it, it may do you some good.~
== BMINSC ~I am interested but Boo says that clearing my mind may be more trouble than it's worth.~
= ~But we are grateful in any case, for the explanation.~
DO ~IncrementGlobal("PM_MinscGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("jaheira")
InParty("PMOrel")
See("jaheira")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)
Global("PM_JaheiraGab","GLOBAL",1)~
THEN BJAHEIR AudJahB1-1
~It appears that life on the road suits you, Orelios.~
== Borelios
~It does, I think. It has been over a year since I left my homeland. One learns to live simply - it helps that I carry so few accoutrements of the adventurer's life.~
== BJAHEIR
~I imagine so. The simple life is often the better, I think. But traveling with <CHARNAME>, simplicity is impossible.~
== Borelios
~It musn't be so bad, if you're still here.~
== BJAHEIR
~Well now, I have old promises to live up to... I imagine you know a great deal about keeping to one's oaths.~
== Borelios
~If I have obligations to fulfill it it because I have chosen them. Those who break their promises lose control over themselves.~
== BJAHEIR
~Hmph. Better to break your word than do worse in keeping it. If you seek to ingratiate yourself to me, you can start by keeping watch at next camp. It is your turn to do so.~
== Borelios
~I look forward to it.~
DO ~IncrementGlobal("PM_JaheiraGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("jaheira")
InParty("PMOrel")
See("jaheira")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)
Global("PM_JaheiraGab","GLOBAL",2)
AreaType(OUTDOOR)~
THEN Borelios AudJahB2-1
~Hmmm, I am yet unaccustomed to this terrain. Were we to be met with an ambush I do not know if I would detect it in time to prepare us.~
== BJAHEIR
~Have you so little faith in the group? We have been adventuring for some time, we are quite capable. If your hope is to provide foolproof protection against treachery I suggest you disabuse yourself of it. We always face risks.~
== Borelios
~I wouldn't suggest otherwise, and I have no doubts as to the capability of my companions, but I performed duties as a scout for nearly 20 years. Old habits die hard.~
== BJAHEIR
~I imagine the warning signs would be easy enough to discern - enclosed kill zones, choke points, that sort of thing.~
== Borelios
~My experience has taught me that the signs are usually telltale and minute. The territory I am used to patrolling is primarily grassland and coastline. Natural means of hiding are rare in such environments.~
== BJAHEIR
~Then we shall simply adjust our tactics to compensate for the difference. You should not overworry, Orelios. It does not befit a man as typically sanguine as yourself.~
== Borelios
~Poke fun all you like, Jaheira. I have tasks that need tending to.~
DO ~IncrementGlobal("PM_JaheiraGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("jaheira")
InParty("PMOrel")
See("jaheira")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)
Global("PM_JaheiraGab","GLOBAL",3)
Global("PM_JaheiraYell","GLOBAL",0)
AreaType(FOREST)~
THEN BJAHEIR AudJahB3-1
~Mmm, it is always refreshing to grace the wilderness again. You should loosen a bit, Orelios, lest you miss out on nature's simpler pleasures.~ DO ~SetGlobal("PM_JaheiraYell","GLOBAL",1)~
== Borelios
~I enjoy the wilds as much as any urban-bound man can. I would periodically venture into the fringes of the Yuirwood back home, at my partner's request. But refreshing as it is, I prefer quieter climes.~
== BJAHEIR
~Hm... Your family is elven I take it?~
== Borelios
~Half-elven. Mixed-race folk, such as my Sylmae, are more common in Aglarand than I have seen elsewhere. But yes, the woods of my land are a place for elves, not humans. I suppose I am privileged to have seen as much of them as I have.~
== BJAHEIR
~"My" Sylmae? I did not take you for the sentimental type, Orelios.~
== Borelios
~Nor I you, but I surely know that you have an inner life, just as I do. You hide it in kind.~
== BJAHEIR
~I... My husband was taken from me, cruelly, when we were brought to this cursed land. How...~
=~Tell me, Orelios, how do you live knowing that you might forever deprive your family of your presence in choosing this life?~
== Borelios
~I have to remind myself that they are destined to feel my loss, or I theirs, at some point in the future. I could die tonight or 50 years from now and their sorrow would be much the same. There is no avoiding it. So I cannot let it bother me.~
== BJAHEIR
~I think...~
= ~No. No, that is not good enough. You have a partner and daughters who surely desire your presence, whatever they may say, and yet you deny them, and risk their further suffering every day.~
= ~How could you be so cruel to them?~
== Borelios
~I love my family, Jaheira, more than anything. But I must live my life.~
== BJAHEIR
~Do you not understand your own words? Are you blind? You had a life, a life entwined with that of others, and you turned your back on them. Why? Why would you do that?~
== Borelios
~I do not believe it possible to answer that question to your satisfaction, Jaheira. I am sorry you feel the way that you do, but I think it sensible that we try and work this out when you have... taken time.~
== BJAHEIR
~No! Answer me! Bastard! Sadist!~
== Borelios
~I am going to scout ahead of the group. I will think on this, I give you my word. Hopefully in time we can resolve this.~
== BJAHEIR
~Go then. I do not... Go. Go away.~
DO ~IncrementGlobal("PM_JaheiraGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Yoshimo")
InParty("PMOrel")
See("PMOrel")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("PM_YoshimoGab","GLOBAL",1)~
THEN BYOSHIM AudYosB1
~Orelios! What an honor it is to find myself traveling with a warrior monk, and so far from home!~
== Borelios
~Indeed?~
== BYOSHIM
~Indeed, friend. I have given up hope of seeing one of your kind away from Kara-Tur. All of the so-called "monks" I have encountered here are zealots, save you of course.~
== Borelios
~Mastery of the self is often undertaken by the faithful. It is no weakness.~
== BYOSHIM
~Ah, but I cannot truly understand them. And they make for such dire conversation!~
= ~In my homeland, there are many such as yourself, largely unconcerned with the Gods, seeking enlightenment for its own sake.~
== Borelios
~Remind you of them, do I?~
== BYOSHIM
~The stillness with which you carry yourself does, yes. Your martial arts, however, lack in fluidity.~
== Borelios
~Have you pointers, then? Or is that some awkward jab?~
== BYOSHIM
~I only jest, friend. Your style is strange to me, but effective enough. Come, next time we encounter something foolish enough to challenge us, I will show you how it is truly done!~
DO ~IncrementGlobal("PM_YoshimoGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Yoshimo")
InParty("PMOrel")
See("PMOrel")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("PM_YoshimoGab","GLOBAL",2)~
THEN Borelios AudYosB2
~Tell me more about the monks you spoke of from before, Yoshimo. Those from your homeland.~
== BYOSHIM ~What do you wish to know, specifically?~
== Borelios ~Did you know any? Are they common?~
== BYOSHIM ~They are not exactly common, though they are certainly more common than they are here, in this land.~
= ~They are renowned and respected masters of the martial arts, both mental and physical. Many seek them out for their wisdom, though their monasteries are often difficult to access.~
= ~As to whether I have known any, I did not have the fortune, no. Besides, I doubt they would have had the patience for such a rogue as myself.~
== Borelios ~I would seek them out myself, had I no obligations. Perhaps one day I shall. You could accompany me, if you wished to. I imagine you miss your homeland as much as I do mine.~
== BYOSHIM ~Ah, much as I appreciate the offer, one can never plan that far ahead. It would not surprise me if I never saw the shores of Kara-Tur again.~
== Borelios ~That would be a shame. Well, I will leave the possibility open, if you will.~
== BYOSHIM ~Indeed, Orelios. We will see.~
DO ~IncrementGlobal("PM_YoshimoGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Aerie")
InParty("PMOrel")
See("Aerie")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("PM_AerieGab","GLOBAL",1)~
THEN Borelios AudAerB1
~A beautiful <DAYNIGHTALL>, wouldn't you agree, young one?~
== BAERIE
~Hmm? Oh... Yes, I suppose so, Orelios.~
== Borelios
~I've seen you hang your head for some time now as we've traveled. Reminiscing over your life in the circus?~
== BAERIE
~How... how did you know that?~
== Borelios
~Lucky guess. You should not be so sullen, travelling with <CHARNAME> is not so bad.~
== BAERIE
~I never said it was! And I can't help it, Orelios. Everything is just so... different here. I miss the excitement, that's all.~
== Borelios
~Ah, but adventuring brings its own excitements. They might not be constant, but you'll come to appreciate them.~
= ~In the meantime, observe.~
== BAERIE
~My! Do you always have those bags hidden in your sleeve?~
== Borelios
~Ah, young one, you should know better than to ask for such secrets.~
= ~I took up juggling in my younger days. It helped to maintain my coordination and timing during long days spent languishing in the barracks.~
= ~Then you get them all in the air at once, and!~
== BAERIE
~Haha, bravo! Thank you, Orelios. It is not quite like home, but you have made me smile, at least.~
== Borelios
~It was no trouble at all, Aerie.~
DO ~IncrementGlobal("PM_AerieGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Aerie")
InParty("PMOrel")
See("Aerie")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("PM_AerieGab","GLOBAL",2)~
THEN BAERIE AudAerB2
~Orelios, do you ever feel... strange?~
== Borelios ~In what way do you mean?~
== BAERIE ~Well, it's just that... You are always under that heavy hood, even when the sun is shining, and you are always so still...~
= ~I just wondered if... I wondered if people judged you.~
== Borelios ~I'm sure that they do, but there is naught I can do about it.~
== BAERIE ~Doesn't it bother you?~
== Borelios ~Why should it? Those who would detest me on such things could hardly be pleased by any measure I might take to appease them. I would surely lose more than I would gain.~
== BAERIE ~I suppose you're right, Orelios. Still, I... I feel hurt, when others look at me like an oddity.~
== Borelios ~You are still young, Aerie. In time, you will come to wonder why these things ever bothered you.~
== BAERIE ~I hope it isn't too long before that happens.~
== Borelios ~I suspect it will be sooner than you think, young one.~
DO ~IncrementGlobal("PM_AerieGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Jan")
InParty("PMOrel")
See("Jan")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("PM_JanGab","GLOBAL",1)~
THEN Borelios AudJanB1
~Hmm, I still have yet to adjust to the breezes from the Shining Sea. I am accustomed to warmer winds of my home.~
== BJAN
~Ah, the Sea of Fallen Stars. I had a third cousin who sailed those parts, east of Westgate. Joskin the Soused, he liked to be called, but we in the family would call him "Josky". Term of endearment, you understand. Heard of him, by chance?~
== Borelios
~No.~
== BJAN
~Well, this was some years ago, you understand. Josky was renowned for his acumen in maritime business transactions, boarding ships at sea and bargaining for cargo -~
== Borelios
~He was a pirate, in other words.~
== BJAN
~Oh, Josky hated that term. Absolutely hated it. "I'm just cutting out the middleman!" he'd say. Josky always had a knack for business, or at least he liked to think so.~
== Borelios
~Yes.~
== BJAN
~Anywho, where was I? Oh right! They called him "Joskin the Soused" because his preferred area of trade was fine wine and spirits, you see. After every successful transaction he would reserve a casket for personal use and become completely useless for days, sometimes weeks.~
== Borelios
~Naturally.~
== BJAN
~Naturally. You may have noticed that I refer to dear Josky in the past tense. Well, he was idling just off the north coast of Turmish when he saw, and may the Gods strike me down if I be untrue -~
== Borelios
~Please do.~
== BJAN
~- he saw a real falling star! Fell into the water right next to his boat! Josky, who always had coin on the brain (and not just because of a nasty coffer explosion he got caught in during his adventuring days), dragged up the meteorite and cracked it open, hoping to find a fortune in ore.~
= ~Much to his chagrin, however, it turned out to be a tanar'ri lord, encased in rock. Thing just popped open a gate to the Abyss and pulled Josky and his crew through with it! Never heard from him again.~
== Borelios
~Of course.~
== BJAN
~Left the boat, though, with all of Josky's prized liquor. When the thing washed up on the Turmish coast, the locals had themselves quite a party!~
~Ah, memories. Eh, what was it that you were saying about the wind, Orelios?~
== Borelios
~Hrn... I seem to have forgotten.~
= ~Away with you, gnome.~
== BJAN
~Until next time, dear friend!~
DO ~IncrementGlobal("PM_JanGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("viconia")
InParty("PMOrel")
See("viconia")
AreaType(OUTDOOR)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("viconia",CD_STATE_NOTVALID)
Global("BM_ViconiaGab","GLOBAL",1)~
THEN Borelios AudVicB1
~Despite the stares you draw, Viconia, I do not regret that <CHARNAME> spared you from death.~
== BVICONI
~Oh, I am so glad that I meet your approval, Orelios. You have some kernel of wisdom for me, no doubt.~
== Borelios
~I do not understand your hostility. Surely things would be easier for you if you were to be civil.~
== BVICONI
~You are quick to presume. I can only be uncivil when the world around me has treated me in kind.~
== Borelios
~I can only imagine the strain of sustaining such constant contempt for others.~
== BVICONI
~It is no strain, in fact it is quite natural. Life under the sun coddles rivvin such as yourself. The incessant cruelty of the Underdark quenches any desire for such pointless "civility".~
== Borelios
~That may be so, but you are no longer underground. I think you would find courtesy, if not respect, to be advantageous among the aboveground races.~
== BVICONI
~Pfeh, your words are hollow. Do you think yourself worldly, monk? What purpose does pandering to fools serve me? Do you think they would drop their prejudices for the slightest indulgence?~
== Borelios
~Those who would hate you, would hate you. But I wager you would find more allies than you might expect, were you to temper your anger, or at least mask your revulsion.~
== BVICONI
~You know nothing. Less than nothing. Leave me be!~
== Borelios
~As you would have it.~
DO ~IncrementGlobal("BM_ViconiaGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Anomen")
InParty("PMOrel")
See("Anomen")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("PM_AnomenGab","GLOBAL",1)~
THEN BANOMEN AudAnoB1
~I must admit that I am uncomfortable traveling with a so-called warrior who refuses to take arms. Orelios, I would submit my services next time we come across a merchant. You must have some coin to spend, hmm? We must find a suitable weapon and a shirt of mail, before your foolishness results in your death or that of another within the group.~
== Borelios ~It is no foolishness, sir. You have seen me in action.~
== BANOMEN ~Yes, I have. I admit to being impressed by your swiftness and your unwillingness to disengage when outmatched, but your continued luck is surely limited. With a blade and plate, you would find your effectiveness increase exponentially, I am sure of it.~
== Borelios ~Anomen, such trappings would only hamper me.~
== BANOMEN ~Have you a death wish, then? What is to protect you from the edge of an orcish blade? How are you to hurt an armored foe?~
== Borelios ~By moving faster, and striking with greater force and precision.~
== BANOMEN ~Your methods are most peculiar, Orelios, but they are... intriguing. I will do my best to aid you in battle but I would still urge you to equip yourself. One never knows what we might come up against.~
DO ~IncrementGlobal("PM_AnomenGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrel25","GLOBAL",2)~
THEN Borelios PMBantBa1
~I have been contemplating this revelation of your purpose, <CHARNAME>. I wish to ask you about it, if you would indulge me.~
DO ~SetGlobal("PMOrel25","GLOBAL",3)~
END
++ ~What do you wish to know?~ + PMBantBa1-1
++ ~I do not wish to hear it. Leave me be.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-1
~It is evident that your life's journey is largely tied to your heritage as a progeny of Bhaal. As I'm sure you realize, this is as much opportunity as it is curse.~
= ~So, <CHARNAME>, what is it that you intend to accomplish?~
END
++ ~My life has been nothing but ceaseless death. I wish to be rid of it, once and for all. And if I can bring some benevolence to this world in so doing, I will.~ + PMBantBa1-2
++ ~I only want to live a life of my own choosing. I tire of fate pressing down upon me. Perhaps perserverance will bring my freedom.~ + PMBantBa1-3
++ ~I strive to fulfill my fate. What good is this cursed blood if I refuse its divinity? To achieve Godhead... I will have greater than mortal legend, acquired greater treasure than the whole of Toril can offer.~ + PMBantBa1-4
++ ~Leave me alone, Orelios. I do not desire to speak of such things, not now.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-2
~Because of your profession and because of your blood, senseless violence hounds you. How would you ensure a... positive net gain, so to speak?~
END
++ ~That seems to be the question, does it not? But no, I am confident that I can bring right to this world. I will balance it, in time.~ + PMBantBa1-5
++ ~My father tips the scales even in death, but "I" am no beacon of evil. The blood of Bhaal cannot restrain my righteousness. I refuse it.~ + PMBantBa1-6
++ ~Can we just focus on the task at hand, right now?~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-3
~Is that even possible? Violence is infused into your very essence.~
END
++ ~I have to believe it is. If I am going to weather this gauntlet, the power to do so will have come from within me.~ + PMBantBa1-7
++ ~Stranger things have happened, no? Gods have been foiled before. I have to try.~ + PMBantBa1-6
++ ~We shouldn't distract ourselves with talk like this. Let's get back to our journey.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-4
~Ah, but there is much risk in this path. What if fate does not hold Godhood in your future? What if you lose all you hold dear? What if you are destroyed utterly?~
END
++ ~Nothing ventured, nothing gained, friend. Would you not strive for the same rarefied prize?~ + PMBantBa1-8
++ ~Everything is worth sacrificing for this. There is no greater reward in all the realms.~ + PMBantBa1-9
++ ~Forget this. I'm finished talking.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-5
~Hmm, I see. Keep to that confidence and perhaps you will. It may take longer than you realize, however. There is much to answer for.~
END
++ ~What do you mean, "answer for"? I have asked for none of this. You know that as well as I, Orelios.~ + PMBantBa1-10
++ ~However long it takes, that's how long I'll labor. It is only right.~ + PMBantBa1-6
++ ~Forget this. We have more pressing matters to attend to.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-6
~Hmm, perhaps. That you seek to counterbalance the influence your father is good, at least.~
END
++ ~As well I should! In a way I do not feel that my life truly reflects upon me. I have been thrust into this life. I lack the autonomy that would make me truly responsible for all this.~ + PMBantBa1-10
++ ~Relax, Orelios. We'll handle whatever's waiting for us as best we can.~ + PMBantEx1-3

CHAIN
IF ~~ THEN Borelios PMBantBa1-7
~That much is true, I suppose. And it is good, I think, that you recognize your... latent power as an unfit tool to that end. Embrace of your heritage will only lead you further down this path.~
END
++ ~Why would that be?~ + PMBantEx1-2

CHAIN
IF ~~ THEN Borelios PMBantBa1-8
~I cannot say, as I am not in your position. But you should be cognizant of the risks you are running. More people than you know have their lives in your hands.~
END
++ ~I believe the reward will be worth it. Whatever losses I incur, the power I gain will be enough to protect more. Exponentially more.~ + PMBantBa1-11
++ ~Hmph, if they lack the strength to take control of their own lives, then they are as good as forfeit. It is no matter.~ + PMBantBa1-9

CHAIN
IF ~~ THEN Borelios PMBantBa1-9
~Do not be so cavalier about the lives of your comrades. They would lay down their lives for you, I'm sure. One ought to pay reverence to that loyalty.~
END
++ ~No one is stopping them from walking away.~ + PMBantEx1-3
++ ~Perhaps. But if I play my cards right, I should be able to make few, if any, sacrifices.~ + PMBantEx1-4

CHAIN
IF ~~ THEN Borelios PMBantBa1-10
~Does it matter? Your hand, <CHARNAME>, is the one that strikes, and if the incidental violence itself is not your responsibility, the ways in which it affects the world are yours to control, ultimately.~
= ~You will do no good in denying your complicity, forced as it may be. Neither will you do good in letting guilt paralyze you. The time to take stock is not now, perhaps, but I would keep it in mind, were I you.~
END
++ ~Perhaps you are right, Orelios. But I don't have to wait until this is over. As you say, the ultimate effects of my actions are mine to control. There are yet ways to steer my destiny.~ + PMBantEx1-5
++ ~You are speaking nonsense. I had no intent to cause the harm I have and to blame me is to go beyond all reason.~ + PMBantEx1-6
++ ~To be perfectly honest, by the time I'm through I don't imagine I'll be in a position to worry about some potential rebuke from my past.~ + PMBantEx1-12

CHAIN
IF ~~ THEN Borelios PMBantBa1-11
~I do not believe it truly wise to... bet against future earnings, as they would say in this land. Your comrades are not commodities to be expended in pursuit of your goals, they are ends in themselves. Their loss would not so easily be alleviated.~
END
++ ~No, that is true. I simply mean to imply that the potential benefits of taking my father's power are exceedingly great. Who's to say that such power could defy even death?~ + PMBantEx1-7
++ ~Pah! They would use me for their own devices. Many have before. Why would I extend to them the courtesy they refuse me?~ + PMBantEx1-8
++ ~Forget I said anything. Let's go.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-1
~As you say. Come then.~
END
++ ~~ EXIT

CHAIN
IF ~~ THEN Borelios PMBantEx1-2
~Well, the temptation to use destructive power against itself is a strong one, but it is no more effective than fighting fire with fire.~
= ~If you plan on extricating yourself from this mess, <CHARNAME>, then you will have to forsake your... promise. Eventually.~
END
++ ~If that is what I must do, then so be it.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-3
~Ah, but that does not mean they have brought some debt to you in their decision not to leave.~
END
++ ~Maybe not. I will have to think on your words.~ +PMBantEx1-1
++ ~Hmph, so you say. I tire of this, let's focus ourselves on something else.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-4
~I do not think that will be possible. If you truly desire your father's power, then those around you will suffer. This is unavoidable.~
= ~If that is your intent, you'd best ensure that they find your cause as worthwhile as you do.~
END
++ ~They know me, I'm sure they will. We have been through much.~ + PMBantEx1-11
++ ~Would you find it worthwhile?~ + PMBantEx1-10

CHAIN
IF ~~ THEN Borelios PMBantEx1-5
~I agree, to an extent. You keep a heartening perspective on this. Perhaps this will work out for the best.~
END
++ ~Perhaps so. But we should return to our task. We have talked enough.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-6
~I do not think you are hearing me. But... it is no matter. What comes will come and I will aid you as I can. I only hope you come to realize the meaning in what I have said, <CHARNAME>.~
END
++ ~I wouldn't rule anything out, but I maintain that you have the wrong perspective on this. We'll talk more later, I'm sure.~ + PMBantEx1-1
++ ~You are entirely too morose about everything, Orelios. Things will not be so bad, you'll see.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-7
~There are rules even the Gods must follow. As I said, it is unwise to assume that divinity would render you capable of anything. There are things that cannot be undone.~
END
++ ~I suppose you are right about that. I'll do my best not to take these things too lightly.~ + PMBantEx1-1
++ ~I understand, but there's no use handwringing over these things. If we fall, we fall.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-8
~Ah, but we are your friends, are we not? We may have asked your aid from time to time, but we have repaid those debts in service, many times over. It is not so cruel an arrangement as you suggest.~
END
++ ~Hmph, if you say so. We'll see if you all are still behind me when things become truly difficult.~ + PMBantEx1-11
++ ~This is always the way it has always been. I keep you all around because it suits me, that's all.~ + PMBantEx1-12

CHAIN
IF ~~ THEN Borelios PMBantEx1-10
~I know full well what I have brought myself into. I have made a decision and shall see it through to the end.~
END
++ ~I appreciate that, Orelios. We will accomplish much, just you wait.~ + PMBantEx1-1
++ ~Good. I'm glad SOMEONE around here knows their place.~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-11
~Indeed, we shall see.~
END
++ ~~ EXIT

CHAIN
IF ~~ THEN Borelios PMBantEx1-12
~Indeed? Expect this to be a difficult path, then.~
END
++ ~~ EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrelTalk","GLOBAL",6)~
THEN Borelios OrelBant4
~It is good to be traveling once more. It reminds me of my time in the Army of the Lion, back home.~
DO ~SetGlobal("PMOrelTalk","GLOBAL",7) SetGLOBAL("PMOrelSpy","GLOBAL",2)~
END
IF ~~ THEN REPLY ~How did you end up serving?~ GOTO OrelBant4-1
IF ~~ THEN REPLY ~I'm not particularly interested in talking at the moment.~ GOTO OrelBant4-2

CHAIN
IF ~~ THEN Borelios OrelBant4-1
~There wasn't much of a choice, really. Service is compulsory for all Aglarondans, once they reach adulthood. I served in protecting the Northeastern border with Thay, as my parents did and as my daughter does now.~
END
IF ~~ THEN REPLY ~What was life like in the Aglarondan army?~ GOTO OrelBant4-3
IF ~~ THEN REPLY ~See any combat?~ GOTO OrelBant4-4

CHAIN
IF ~~ THEN Borelios OrelBant4-2
~That's quite alright.~ EXIT

CHAIN
IF ~~ THEN Borelios OrelBant4-3
~Honestly? I was happy. Regimented life suited my temperament. While I was stationed at Emmech I met my wife and started a family. We hadn't suffered a Thayan invasion in my lifetime, so no one looked askance at us. That was twenty years ago.~
END
IF ~~ THEN REPLY ~What changed? Something must have, if you're here now.~ GOTO OrelBant4-5


CHAIN
IF ~~ THEN Borelios OrelBant4-4
~Not for most of my career. Thay had not openly attacked for a generation by the time I enlisted. We lived normal lives. We had families, we grew comfortable. We knew it wasn't meant to last, but we made the most of it.~
END
IF ~~ THEN REPLY ~Thay attacked, I take it?~ GOTO OrelBant4-5

CHAIN
IF ~~ THEN Borelios OrelBant4-5
~My children grew up, that's all.~
END
IF ~~ THEN REPLY ~Yes, fascinating, but I still don't understand - how is it that you were once a mage but no longer?~ GOTO OrelBant4-6

CHAIN
IF ~~ THEN Borelios OrelBant4-6
~It's a long story, <CHARNAME>, and I've already rambled on enough for one day. We will talk more soon, but I wish to know something before we focus on the task at hand. Why did you begin adventuring? What drew you to it?~
END
IF ~~ THEN REPLY ~I was orphaned and barred from my home when I had just come of age. There was really nothing else for me to do.~ GOTO OrelBant4-7
IF ~~ THEN REPLY ~My foster father, Gorion, was murdered as we were traveling outside Baldur's Gate. Until I was kidnapped and brought to Athkatla, my purpose was to bring revenge to the man who murdered him.~ GOTO OrelBant4-7

CHAIN
IF ~~ THEN Borelios OrelBant4-7
~Hmm, I see. The circumstances you have found yourself in are most harsh. That you still survive, triumph even, speaks to your resilience. Not many could have faced what you have.~
= ~Come, let us return to our journey. I'll take point this time, yes?~ EXIT