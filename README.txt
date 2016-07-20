README file for the HYPERMEDIA (WEB AND MULTIMEDIA) course project.

This README refers to the technology delivery, submitted in the second appello of July 2016.
This project was realized by Pavel Panyushov, Davide Piantella and Marco Trabucchi.

WHICH FRAMEWORK DID WE USE?
We used Twitter Bootstrap as our website's framework.

WHICH OTHER COMPONENTS DID YOU USE?
We used the Fliterizr plugin for JQuery to implement the filter that can be seen in many pages of the website.
We also used mySQLi for the database implementation, as requested in the official document, as well as Adobe Phonegap to generate the .apk app
for our website to be browsed easily by Android devices.
Our website was deployed to a server hosted by Altervista. The address is www.marveldad.altervista.org

IMPORTANT THINGS TO NOTE:
- In order to make navigation on mobile devices, we decided to modify the behavior of the website's navbar: when on a medium or large screen, it opens
as a horizontal dropdown; when on smaller devices, it does not open any dropdown menus, but instead brings the user to a "categories" page, which
allows him/her to navigate to single categories or to promotions/faq.
- The shopping cart page is static. The "Complete" button is inactive, as are the "Add to cart" buttons in single device pages. The same goes for the contact 
form "Submit" button.
- Every single page content (Devices, SL Services, Assistance Services) is loaded dynamically from the DB by performing asynchronous Ajax calls.
- Every product or SL Service in promotion is highlighted in red in the respective grid, to distinguish it from non-promo products.
- "Who we Are" and "The Group" pages are both implemented but static: hence there are no links to news and elements in these pages.

CONCLUSION
We did our best to optimize the user experience of the website, making navigation easy and accessible for the largest number of people
and in the easiest possible way, even considering the very short period of time in which the website was developed.