# Night Market

I built a food vendor tracking app after having visited Queens Night Market in NYC several times. With this app, a user can add a new vendor or cuisine via a form. There is a home page with a navigation bar. On the show page for the vendors, the user can delete or update the information of the vendor by clicking the delete or update button. On the show page of the cuisines, the user can add a new cuisine or click on a specific cuisine to see the list of vendors associated with the cuisine. 


### Requirements
* uby 2.7.4p191
* sqlite3 3.36.0

### Installation
1. Go to the repo in Github, fork and clone it 
2. Cd into the project folder and run bundle install 
3. Run rake db:migrate
4. Run rake db:seed 
5. Run the server on port 9292 with command: rake server


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

### License
[MIT](https://choosealicense.com/licenses/mit/)

