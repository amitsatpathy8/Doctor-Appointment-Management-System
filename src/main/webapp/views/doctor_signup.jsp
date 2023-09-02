<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="doctor" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="./css/login.css" />
    <link rel="stylesheet" href="./css/doctor-signup.css" />
  </head>
  <body>
    <header class="header">
      <div class="left-logo-div">
        <a href="/" class="left-side-logo-ancher">DAMS</a>
      </div>
      <div class="right-function-div">
        <span class="doctor-lable">Doctor</span>
        <a class="selected-button" style="margin-right: 10px;border-style: none;background-color: transparent; text-decoration: none" href="doctorSignUp">
          Sign Up
        </a>
        <a class="non-selected-button" href="doctorLogin">Login</a>
      </div>
    </header>
    <main>
      <div class="form-div">
        <doctor:form action="docSignup" method="post" class="form-tag" id="doctor_form" modelAttribute="doctorDetails">
          <div class="welcome-message-div">
            <p class="welcome-message">Sign Up</p>
            <p class="sub-message">Fill all the details carefully</p>
          </div>

          <doctor:input
            class="input-tag-form"
            type="text"
            name="dname"
            path="dname"
            placeholder="Enter Name"
            required="required"
          />
          <doctor:input
            class="input-tag-form"
            type="email"
            name="demail"
            path="demail"
            placeholder="Enter Email"
           required="required"
          />
          <doctor:input
            class="input-tag-form"
            type="number"
            name="dmobile"
            path="dmobile"
            placeholder="Enter Patient Mobile"
            required="required"
          />
          <doctor:input
            class="input-tag-form"
            type="text"
            name="apmtCharge"
            path="apmtCharge"
            placeholder="Appointment Fees"
            required="required"
          />
          <div class="input-tag-form" style="background-color: white">
            Gender
            <doctor:radiobutton path="gender" name="gender" value="MALE" checked="checked"/>Male
            <doctor:radiobutton path="gender" name="gender" value="FEMALE" />Female
            <doctor:radiobutton path="gender" name="gender" value="OTHER" />Other
          </div>
          <doctor:input
            class="input-tag-form"
            type="text"
            name="state"
            path="state"
            placeholder="State"
            required="required"
          />
          <doctor:input
            class="input-tag-form"
            type="text"
            name="cityName"
            path="cityName"
            placeholder="City"
            required="required"
          />
          <div
            class="input-tag-form"
            id="durationDiv"
            style="background-color: white"
          >
            Shift Durations
            <input type="radio" name="duration" value="1" />1 Hour
            <input type="radio" name="duration" value="2" checked="checked"/>2 Hours
            <input type="radio" name="duration" value="3" />3 Hours
          </div>
          <doctor:input
            class="input-tag-form"
            type="text"
            name="availability"
            path="availability"
            id="availability"
            placeholder="String form availability slot"
            readonly="true"
          />

          <div class="time-slote-div" id="slot_display">
            <!-- Do not delete this -->
          </div>

          <select
            class="input-tag-form"
            id="durationDropdown"
            name="durationDropdown"
          ></select>

          <div class="submit-button-div">
            <input class="submit-button" type="submit" value="Sign Up" />
            <input
              class="submit-button"
              value="Add Availability Slot"
              onclick="displaySlot()"
            />
          </div>
        </doctor:form>
      </div>
    </main>
  </body>
  <script src="./js/doctor-signup.js"></script>
</html>
