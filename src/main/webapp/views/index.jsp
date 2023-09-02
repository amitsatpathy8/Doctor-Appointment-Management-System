<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="./css/login.css" />
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
        <form action="book-appointment.html" class="form-tag">
          <div class="welcome-message-div">
            <p class="welcome-message">WELCOME</p>
            <p class="sub-message">
              Now you can book appointments at your fingertips.
            </p>
          </div>
          <select class="input-tag-form" name="did" required>
            <option value="--select--" selected>--select doctor--</option>
            <option value="did01">Manash Puhan</option>
            <option value="did02">Madan Samal</option>
          </select>

          <div class="submit-button-div">
            <input class="submit-button" type="submit" value="Next" />
          </div>
        </form>
      </div>
    </main>
  </body>
</html>
