<h1 align="center">Week 3</h1>

## Week goals
- Build a simple web app
- Follow an effective debugging process for web applications
- Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS)
- Explain the MVC pattern

## Personal Goals
1. Write notes on how the web works at a simple level
2. Complete practicals on servers and clients
3. Debugging workshop
4. Build a simple web app

<h2 align="center">1. The Web </h2>

#### Notes
- Request response is how computers communicate with one another.
  * Client --> Server (requesting content)
  * Server ..> Client (responding with information)
- HTTP is the protocol used in the client-server model as shown above
  * The client submits a HTTP request message and the server responds with HTTP files and other content.
- HTML is the standard markup language for documents to be displayed in a web browser.
  * It can be assisted (by other languages such as JS and CSS), which add various functionalities to the website.
  * HTML is responsible for the structure of the webpage.
- CSS is responsible for the presentation of the document written in markup (normally) HTML
  * Its use is to enable more flexibility and control of the presentation of the information.
- The MVC pattern
![image](https://media.prod.mdn.mozit.cloud/attachments/2018/06/08/16042/090bb2d2be010d2d547684a2d9ee41aa/model-view-controller-light-blue.png)
  * This pattern is used commonly when developing user interfaces
    - Model - managing data of application
    - View - presentation of model
    - Controller - takes user input, passing it to model

#### Evidence
- I read the various wiki pages on the above topics to get a general idea of them before doing any coding examples or read more in depth.
- During the paired programming exercise for this week, it involved explaining the concept of servers and clients to the partner, here I explained what the various feedback (on the terminal), which was from the Sinatra server we were running.

<h2 align="center">2. Client-Server Relationship </h2>

#### Evidence
- [Here](https://github.com/DillonBarker/week3/tree/master/servers) I am working through the servers practical, where you build a server and keep it running using a loop.

<h2 align="center">3. Debugging Web Applications </h2>

#### Notes
- Having the web alongside tests acts as another form of debugging and can greatly assist you in finding errors in the code, either by your website not fucntioning correctly or by it displaying a certain error message.

#### Evidence
- I went to the debugging workshop on this and covered various ways to tighten the loop whilst working on web applications.

<h2 align="center">4. Web apps </h2>

#### Evidence
- [here](https://github.com/DillonBarker/week3/tree/master/greeter_app) I built a small app that greets you happy birthday if you fill the form and today is your birthday
- [here](https://github.com/makersacademy/rps-challenge) I built a rock paper scissors game following the weekend challenge goals by Makers.
