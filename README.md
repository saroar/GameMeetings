# Planning our Meeting Application 
	1. Answer Questions
		- What are we building ?
		- Who are we building it for ?
		- What features do we need to have?
	2. User stories
	3. Model our data
	4. Think though the pages we need in our App

## Quistions 
1. What are we building ? We are building a events meetings site. A Meeting where we can play games, share your feeling, meet new people and make your self happy .
2. For whom we building it? Wh are building it for people who enjoy meet new people or with friends expend beautiful time and make together some awesome memories .
3. What features do we want to have?
	- Meetings 
		- Create / Edit / Destroy
	- Games
		- Create / Edit / Destroy

### Players Stories
As a People, I want to be able to chose. 
	- As player, I want to they can choose multiple games with date start time and ending times .
	- As player they can chose venue 

#### Modeling our Data
*** Meeting ***
	title:string 
	description:text
	game-date:string
	start_play_time:datetime
	end_play_time:datetime
*** Games ***
	title:string
	description:text
*** Venue ***
	  t.string :address
	  t.float :latitude
	  t.float :longitude


##### Thinking though the pages we need in our app
- Welcome 
- Meetings#index
- Mettings#show
- Meetings#edit
- Mettings#sdestroy
- Games#index
- Games#show

