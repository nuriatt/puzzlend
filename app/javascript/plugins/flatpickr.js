import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const newBookingForm = document.getElementById('new_booking');
  if (newBookingForm) {
    flatpickr(".datepicker", {
      minDate: 'today',
      altInput: true,
      dateFormat: "Y-m-d",
      disable: JSON.parse(newBookingForm.dataset.unavailableDates) // add this one!
    });
  }
};

export { initFlatpickr };
