<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DAMS</title>
    <link rel="stylesheet" href="./css/login.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <header class="header">
      <div class="left-logo-div">
        <a href="/" class="left-side-logo-ancher">DAMS</a>
      </div>
      <div class="right-function-div">
        <span class="doctor-lable">Doctor</span>
        <a class="non-selected-button" style="margin-right: 10px" href="doctorSignUp">
          Sign Up
        </a>
        <a class="selected-button" href="doctorLogin" style="border-style: none;background-color: transparent; text-decoration: none;">Login</a>
      </div>
    </header>

    <main>
      <div class="form-div">
        <form action="" class="form-tag">
          <div class="welcome-message-div">
            <p class="welcome-message">WELCOME, DOCTOR</p>
            <p class="sub-message">Please login to view the appointments</p>
          </div>
          <input class="input-tag-form" type="text" placeholder="Email ID" />
          <input
            class="input-tag-form"
            type="password"
            placeholder="Password"
          />
          <div class="submit-button-div">
            <input class="submit-button" type="submit" value="Login" />
          </div>
        </form>
      </div>
    </main>
  </body>
</html>
