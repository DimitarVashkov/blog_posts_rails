# Rails tutorial app

Members can:
1. Log in
2. Write posts
3. See the author of the post

Requirements:
* Generate models for User and Posts - DONE
* Fix routing - KINDA
* Create controllers for session, user and posts - DONE

My root will be posts#index

1. The user will need to log in.
- username and email -> string, validated for length and type - DONE
- Password in the form of password digest - DONE
- Sessions controller - we'll save a permanent cookie in the user model - BASIC only

- Save session permanently 


2. Posts
- title, body and reference to the user that wrote it. - DONE
- create view and also index where I show them all - DONE

3. Styling
- Bootstrap using a theme found at
https://blackrockdigital.github.io/startbootstrap-one-page-wonder/