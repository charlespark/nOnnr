# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Note.destroy_all

notes = Note.create([
	{
		_id: ObjectId("5445949d436861ad6f000000"),
		word: "refrigerator",
		content: "Today, I decided that I need a new refrigerator.  My current one does the job, but it is simple; the door doesn't always stay closed and in turn, items inside do not stay as cold as they should.  I didn't expect to need a new refrigerator, but considering how important it is, I'll need to purchase a new one soon."
		local_time: "Monday, October 20, 16:03:25"
	},
	{
		_id: ObjectId("544595a0436861ad6f010000"),
    	word: "mail",
    	content: "Getting new mail used to be so much fun.  However, now the act of receiving mail is so mundane and fraught with anxiety that I no longer look forward to walking up to my mailbox to look for any new articles of mail.  Bills, solicitations, advertisements and plain junk mail have ruined the experience for me."
		local_time: "Monday, October 20, 23:10:32"
	},
	{
	    _id: ObjectId("5445ac28436861ad6f020000"),
	    word: "bake",
    	content: "It's was warm in Los Angeles yesterday.  A beautiful autumn day that felt like summer.  Very warm, but not hot, if that makes sense.  It's days like that which make us all feel great about our decisions to move to (remain in) Los Angeles."
		local_time: "Tuesday, October 21, 06:17:39"
	},
	{
	    _id: ObjectId("5445b1ab436861ad6f030000"),
    	word: "glass",
    	content: "Glasses, they are both functional and fashionable.  I absolutely cannot stand wearing regular glasses outside of the house, yet I love to wear sunglasses.  Is this unusual, or is this regular behavior? "
		local_time: "Tuesday, October 21, 13:24:46"
	},
	{
	    _id: ObjectId("5446efe4436861ad6f080000"),
    	word: "late",
    	content: "\"Late\" takes on a few different forms.  One definition is of not being on-time for an appointment, event, task, etc.\r\nAnother use of the term is in describing someone who has passed away.\r\nEither way, neither definition can be construed as 100% positive."
		local_time: "Tuesday, October 21, 20:31:53"
	},
	{
	    _id: ObjectId("54471fef436861ad6f090000"),
    	word: "Elephant",
    	content: "Elephants, are they really that smart?  Or are they so large that we attribute their perceived intelligence to the fact that they are so massive?  As of now, I don't know either way..."
		local_time: "Wednesday, October 22, 03:39:00"
	},
	{
	    _id: ObjectId("544720c0436861ad6f0a0000"),
    	word: "Paper",
    	content: "It is the ultimate utility.  It can be used to clean, to cover, to write things onto, to wrap, to soak.\r\nAll from some pretty wood pulp and heat..."
		local_time: "Wednesday, October 23, 10:46:07"
	},
	{
	    _id: ObjectId("544721f8436861ad6f0b0000"),
    	word: "Stew",
    	content: "I'm mad"
		local_time: "Wednesday, October 23, 17:53:14"
	}
]);
