import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const newBookingForm = document.getElementById('new_booking');
  const editBookingForm = document.querySelector('.edit_booking');
  if (newBookingForm) {
    flatpickr(".datepicker", {
      minDate: 'today',
      altInput: true,
      dateFormat: "Y-m-d",
      disable: JSON.parse(newBookingForm.dataset.unavailableDates) // add this one!
    });
  } else if (editBookingForm) {
    flatpickr(".datepicker", {
      minDate: 'today',
      altInput: true,
      dateFormat: "Y-m-d",
      disable: JSON.parse(editBookingForm.dataset.unavailableDates) // add this one!
    });
  }
};

export { initFlatpickr };
