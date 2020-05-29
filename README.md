# README

This api is only to a test, don't use in production

# Steps
- Go to the path project
- Run ```gem install or bundle install```
- Then if you use the local machine run ```rails db:create```
- If you want use test data use ```rails db:seed```
- If you use local machine run ```rails s``` to up local server

# API's
- All paths allow next methods:
-- #POST, #GET, #PATCH, #DELETE

# Paths
- users
- questions
- answers
- You can test that https://questions-answers-api.herokuapp.com/api/v1

# Examples to get

# Gets
- GET ```https://questions-answers-api.herokuapp.com/api/v1/users``` to get all users
- GET ```https://questions-answers-api.herokuapp.com/api/v1/users/1``` to get user with id = 1
- GET ```https://questions-answers-api.herokuapp.com/api/v1/questions``` to get all questions
- GET ```https://questions-answers-api.herokuapp.com/api/v1/questions/1``` to get question with id = 1
- GET ```https://questions-answers-api.herokuapp.com/api/v1/answers``` to get all answers
- GET ```https://questions-answers-api.herokuapp.com/api/v1/answers/1``` to get answer with id = 1

# Posts
- POST ```https://questions-answers-api.herokuapp.com/api/v1/users``` with de data as this  
```{"name": "some name", "email": "some email"}```

- POST ```https://questions-answers-api.herokuapp.com/api/v1/questions``` with de data as this  
```{"label": "some label", "active": true or false}```

- POST ```https://questions-answers-api.herokuapp.com/api/v1/answers``` with de data as this  
```{"answer": "some answer", "user_id": <some user id>, "question_id": <some question id>}```

# Patchs
- PATCH ```https://questions-answers-api.herokuapp.com/api/v1/users``` with de data as this  
```{"name": "some name", "email": "some email"}```

- PATCH ```https://questions-answers-api.herokuapp.com/api/v1/questions``` with de data as this  
```{"label": "some label", "active": true or false}```

- PATCH ```https://questions-answers-api.herokuapp.com/api/v1/answers``` with de data as this  
```{"answer": "some answer", "user_id": <some user id>, "question_id": <some question id>}```


# Delete
- DELETE ```https://questions-answers-api.herokuapp.com/api/v1/users/<some id>```
- DELETE ```https://questions-answers-api.herokuapp.com/api/v1/questions/<some id>```
- DELETE ```https://questions-answers-api.herokuapp.com/api/v1/answers/<some id>```
