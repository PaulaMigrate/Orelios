BEGIN PMOrel

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Intro0
SAY ~Is there a single room in this inn that adventurers will not barge into?~
IF ~~ THEN REPLY ~Excuse me?~ GOTO Intro1
IF ~~ THEN REPLY ~No need to get sore. I'm leaving.~ EXIT
END

IF ~~ THEN BEGIN Intro1
SAY ~You are an adventurer, aren't you? You certainly have the manners of one. Did you need something?~
IF ~~ THEN REPLY ~Just exploring these back rooms. Who might you be?~ GOTO Intro6
IF ~~ THEN REPLY ~You would do well to watch your tone around me, stranger. I'll do what I like, understand?~ GOTO Intro7
END

IF ~~ THEN BEGIN Intro2
SAY ~"Don't mean to pry"? Truly? Ah, no matter. Well met then, <CHARNAME>, but again I must ask you: What is it that you need? I was enjoying the solitude. Figuratively speaking.~
IF ~~ THEN REPLY ~I was wondering more about you, actually. I don't know many people who would find a place like this relaxing, and your clothing is... unusual.~ GOTO Intro3
IF ~~ THEN REPLY ~I was hoping that you might be able to tell me about something.~ GOTO CCQuery
IF ~~ THEN REPLY ~Nothing at present. I'll take my leave of you.~ EXIT
END

IF ~~ THEN BEGIN Intro3
SAY ~I suppose that is fine enough. What interests you, specifically?~
IF ~~ THEN REPLY ~What is it that you do, exactly? Your manner of dress is unlike any I have seen here.~ GOTO Selfgab1
IF ~~ THEN REPLY ~Where are you from? I have not been in Athkatla long, yet you still do not strike me as a native of Amn.~ GOTO Selfgab2
IF ~~ THEN REPLY ~Actually, let me ask you about something else.~ GOTO CCQuery
IF ~~ THEN REPLY ~Nevermind, I must leave.~ EXIT
END

IF ~~ THEN BEGIN Intro4
SAY ~Hmm?~
IF ~~ THEN REPLY ~I was wondering more about you.~ GOTO Intro3
IF ~~ THEN REPLY ~I was hoping that you might be able to tell me about something.~ GOTO CCQuery
IF ~~ THEN REPLY ~Farewell.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Intro5
SAY ~You're back, I see. What do you require?~
IF ~~ THEN REPLY ~I wanted to talk about you.~ GOTO Intro3
IF ~~ THEN REPLY ~I was hoping that you might be able to tell me about something.~ GOTO CCQuery
IF ~~ THEN REPLY ~If you're in need of some excitement, I'm looking for people to join my group.~ GOTO Join1
IF ~~ THEN REPLY ~Nothing right now. I'll take my leave of you.~ EXIT
END

IF ~~ THEN BEGIN Intro6
SAY ~I could ask you the same question, couldn't I? Hmm, very well. I go by Orelios.~
= ~I must say I wasn't really expecting an interrogation today. I assume you have a name?~
IF ~~ THEN REPLY ~<CHARNAME>. Well met. I don't mean to pry, but you seem a bit too put-together to be lounging about in a den of vice.~ GOTO Intro2
END

IF ~~ THEN BEGIN Intro7
SAY ~My apologies, <PRO_SIRMAAM>, it was simply a momentary lapse in judgment. Let's not remain strangers, hmm? Who might you be?~
IF ~~ THEN REPLY ~My name is <CHARNAME>, and I have questions that need answering.~ GOTO Intro3
IF ~~ THEN REPLY ~None of your business. I'm through with you.~ EXIT
END

IF ~~ THEN BEGIN Selfgab1
SAY ~I am a soldier by blood but a warrior ascetic by trade, if you could call that a trade. The colloquial term is "monk", I believe, though there are certainly monks who do not cultivate skills such as mine.~
IF ~~ THEN REPLY ~I'm afraid I don't follow you. A soldier by blood?~ GOTO Selfgab3
IF ~~ THEN REPLY ~And what skills are those?~ GOTO Selfgab4
IF ~~ THEN REPLY ~You're not from around here, are you? Where do you come from?~ GOTO Selfgab2
IF ~~ THEN REPLY ~If you've nothing better to do, I could use one such as you at my side. Care to join me in my travels?~ GOTO Join1
IF ~~ THEN REPLY ~Interesting. Let me ask you about something else.~ GOTO CCQuery
IF ~~ THEN REPLY ~I see. I must go, I may return later. Farewell.~ EXIT
END

IF ~~ THEN BEGIN Selfgab2
SAY ~No, that is true, I am a foreigner in this land. I hail from Aglarond, far to the East across the Sea of Fallen Stars. I embarked on my journey here nearly a year and a half ago, but I have only been here in Athkatla for roughly a month's time.~
IF ~~ THEN REPLY ~What about your profession? What do you do?~ GOTO Selfgab1
IF ~~ THEN REPLY ~I see. Tell me about something else.~ GOTO CCQuery
IF ~~ THEN REPLY ~Wait here, I shall return.~ EXIT
END

IF ~~ THEN BEGIN Selfgab3
SAY ~My father and mother both served in the defense of Aglarond, first under Queen Ilione and then under the Symbul, who rules today. I followed their path for a time, but no longer.~
IF ~~ THEN REPLY ~I see. You mentioned having skill as a warrior, earlier. What skills do you possess?~ GOTO Selfgab4
IF ~~ THEN REPLY ~I was wondering about something else.~ GOTO Intro3
IF ~~ THEN REPLY ~I would have use for one such as you. Would you consider joining me?~ GOTO Join1
END

IF ~~ THEN BEGIN Selfgab4
SAY ~As an ascetic, I have chosen to forgo the use of traditional armor and rely primarily on my own body to meet my enemies in battle, though I can use certain weapons if the situation truly calls for them. An ascetic's life is denial and self-discipline, and there is a... special sort of power that one derives from such things.~
IF ~~ THEN REPLY ~"Special power"? That sounds exciting. Tell me more about that.~ GOTO Selfgab5
IF ~~ THEN REPLY ~You sound quite capable. What would you say if I asked you to join my group?~ GOTO Join1
IF ~~ THEN REPLY ~Wait here, I shall return.~ EXIT
END

IF ~~ THEN BEGIN Selfgab5
SAY ~It is called "Ki". With it I can will myself to move with great speed, avoid injury, exploit weaknesses in my enemies, and even heal bodily wounds. All I have to do is concentrate. But I am not a berserker - I am most effective when exercising precision and strategy in battle.~
IF ~~ THEN REPLY ~Hmm, I see. I could make good use of such abilities. Would you consider joining me on my travels?~ GOTO Join1
IF ~~ THEN REPLY ~Tell me about something else.~ GOTO Intro3
END

IF ~~ THEN BEGIN Join1
SAY ~You ask that of random people you meet? Ah, I suppose I have spent enough time in this place. Why? What would you have me assist you in doing?~
IF ~~ THEN REPLY ~I am pursuing a mad archmage named Irenicus. He has kidnapped my foster sister Imoen, and I intend to rescue her from his cruelty.~ GOTO Accept1
IF ~~ THEN REPLY ~A mage named Irenicus has attacked and provoked me. I intend to exact vengeance upon him.~ GOTO Accept2
IF ~~ THEN REPLY ~Ah, nevermind. I may return, wait here.~ EXIT
END

IF ~~ THEN BEGIN Accept1
SAY ~A worthy goal, I suppose. I will aid you in saving this Imoen. Lead on.~
IF ~~ THEN REPLY ~Alright, we're off.~ DO
~SetGlobal("OreliusJoinrf","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Accept2
SAY ~If what you say is true, I am not unopposed to helping you seek your revenge. Lead on.~
IF ~~ THEN REPLY ~Alright, we're off.~ DO
~SetGlobal("OreliusJoinrf","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN CCQuery
SAY ~What do you wish to know?~
IF ~~ THEN REPLY ~I'm looking to buy some... Special equipment. Do you know a place where that would be possible?~ GOTO CCDuh1
IF ~~ THEN REPLY ~Have you any suggestions for gainful adventure in these parts?~ GOTO CCDuh2
IF ~~ THEN REPLY ~Actually, let's talk about something else.~ GOTO Intro4
IF ~~ THEN REPLY ~Farewell.~ EXIT
END

IF ~~ THEN BEGIN CCDuh1
SAY ~This is Amn, merchants are thick on the ground. Bernard here at the Copper Coronet has many things for sale, and the Adventurer's Mart at Waukeen's Promenade is one of the better-stocked outfitters that I've encountered in my travels, though I have little need for it. If you're looking for exotic equipment, there is a woman on the second floor of the Adventurer's Mart who sells such things. Bring as much coin as you can carry.~
IF ~~ THEN REPLY ~Thanks. I had more questions about Athkatla.~ GOTO CCQuery
IF ~~ THEN REPLY ~Interesting. Let's talk about something else.~ GOTO Intro4
END

IF ~~ THEN BEGIN CCDuh2
SAY ~Since arriving here I haven't done much in the way of adventuring. I do not care to court danger alone if I can avoid it. I have noticed, however, a lot of strange commotion coming from the end of this hallway, and I believe there's an entrance to the sewers of the slums close by. There should be all manner of danger there.~
= ~Beyond that, I have repeatedly noticed some fairly rough-hewn people moving about the streets at night whilst paying my respects to the Gods in the Temple District. I suspect that a curious adventurer might find a den of illicit activities in the area, were they to search thoroughly enough. Perhaps in one of the manses, there.~
IF ~~ THEN REPLY ~Thanks. I had more questions about Athkatla.~ GOTO CCQuery
IF ~~ THEN REPLY ~Interesting. Let's talk about something else.~ GOTO Intro4
END

BEGIN PMOrelP

IF ~Global ("OreliusJoinrf","LOCALS",1)~ THEN BEGIN LeaveGroup
SAY ~Is our time at an end, then? I shall stay here, if so. I have much to meditate over.~
IF ~~ THEN REPLY ~Not yet. You should stay.~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~For a time, perhaps. I will return if I have need of you.~ DO ~SetGlobal("OreliusJoinrf","LOCALS",0)~ EXIT
END

IF ~Global("OreliusJoinrf","LOCALS",0)~ THEN BEGIN ComeBack
SAY ~You have returned, I see. Do you require my aid once more?~
IF ~~ THEN REPLY ~Yes. Join us once more.~ DO ~SetGlobal("OreliusJoinrf","LOCALS",1) JoinParty()~ EXIT
IF ~~ THEN REPLY ~Not at present. Stay here.~ EXIT
END
