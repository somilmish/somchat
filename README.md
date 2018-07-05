Chat application using rails

Ruby version- ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]

Rails version- Rails 5.2.0

A chat application I'm making as a personal project. The features I intend to add are given below:

Chat Module

* Enable chatting between users, enable search of names (send request to chat when the user is requested)
* Enable video chat between two members
* Enable creation of chatrooms
* Allow users to be clicked by other users, send request to chat from the user who clicked to the user who was clicked
* If user b accepts, enable chat between the two users (same for when the user finds the other through search)
* Add report button with every chat post, highlight the post only for the moderator user

Search Module

* Search users by name, or email id
* Search by channel name or channel id
* Enable search form for every page in the header
* Enable in-chat search (from the given database)

User Module

* Normal users: Can chat, name displayed normally, create posts, edit posts, create channel names
* Moderator users: Can chat, view reports, see the highlights on reported messages, ban users, remove posts, edit channel names
* Admin users: Can change user permissions, see the highlights on reported messages, ban users, remove posts, remove channels

* Profile pages for the three groups, with a field differentiating between them
* Profile pages have Ban and remove options that are only visible to the Moderator and Admin groups
* Edit profile option for users and admin only

