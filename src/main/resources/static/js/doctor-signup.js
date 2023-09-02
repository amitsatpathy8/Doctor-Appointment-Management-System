let slotDisplay = document.getElementById("slot_display");
let form = document.getElementById("doctor_form");
let durationDropdown = form.durationDropdown;


/**Following section containes the utility functionss that help to generate
 *  the slot based on the duration selected. */
//-----------------------------------------------------------------------------
let timestamp = "";
function updateTimeStamp(string) {
  timestamp = "";
  timestamp = string;
}

function getTimeStampWithSubfix(timeValue) {
  giveTimeStamp(timeValue);
  if (timeValue == 0 || timeValue < 12) {
    updateTimeStamp(timestamp + "AM");
    return timestamp;
  } else if (timeValue > 12 && timeValue < 24) {
    updateTimeStamp(timestamp + "PM");
    return timestamp;
  } else {
    updateTimeStamp(timestamp + "PM");
    return timestamp;
  }
}

async function giveTimeStamp(indexValue) {
  if (indexValue == 0 || indexValue == 12 || indexValue == 24) {
    updateTimeStamp("12.00");
  } else if (indexValue < 10) {
    updateTimeStamp("0" + indexValue + ".00");
  } else if (indexValue < 12) {
    updateTimeStamp(indexValue + ".00");
  } else if (indexValue > 12) {
    updateTimeStamp(await giveTimeStamp(indexValue - 12));
  }
  return timestamp;
}
//-----------------------------------------------------------------

/**This function call for generate the value
 * for the first time the HTML Load*/
generateTimeStamp();

/**Adding Event Listener to dinamically
 *  change the drop-down manu */
document
  .getElementById("durationDiv")
  .addEventListener("click", generateTimeStamp);

/**This Function helps to generates
 * the time slotes based on the Shift duration selected */
function generateTimeStamp() {
  while (durationDropdown.length > 0) {
    durationDropdown.remove(0);
  }
  let startTime = 0;
  let endTime = Number(startTime + Number(form.duration.value));
  let stringData = "";
  for (let i = 0; i < 24; i = i + Number(form.duration.value)) {
    let elementOption = document.createElement("option");
    stringData =
      getTimeStampWithSubfix(startTime) +
      " - " +
      getTimeStampWithSubfix(endTime);

    elementOption.innerHTML = stringData;
    elementOption.value = stringData;
    durationDropdown.appendChild(elementOption);
    startTime = endTime;
    endTime = endTime + Number(form.duration.value);
  }
}

/**This functions helps to display the time-slot selected after
 *  the button "Add Availability Slot" */
function displaySlot() {
  let element = document.createElement("p");
  element.innerHTML = form.durationDropdown.value;
  element.classList.add("time-slote");
  slotDisplay.appendChild(element);
  console.log("Hello");
  if (form.availability.value == "") {
    form.availability.value = form.durationDropdown.value;
  } else {
    form.availability.value =
      form.availability.value + "," + form.durationDropdown.value;
  }
  return false;
}
