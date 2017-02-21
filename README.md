# README

## DevMatch

DevMatch is a member website where entrepreneurs, developers and investors can connect. DevMatch offers two plans, Basic (free) and Pro (paid).

This website was developed using BootStrap (HTML, CSS, JS) for the front end, and Ruby on Rails for the back end.

Two APIs were used
- Stripe: To allow users to subscribe to the $10/mo Pro plan
- Mailgun: To send emails to the users after their subscription to DevMatch

No payment information is handled through the website during the submission of the Pro plan form. Everything is handled by Stripe, and no sensitive information is stored on the website database.

DevMatch was my fist project using Ruby on Rails to create a SaaS model website. The aim here wasn't focus on the design (very basic) but on the back end.
