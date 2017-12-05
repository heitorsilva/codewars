// Description:
// The code provided is supposed return a person's Full Name given their first and last names.
// But it's not working properly.

// Notes:
// The first and/or last names are never null (None in Python), but may be empty.

// Task:
// Fix the bug so we can all go home early.

class Dinglemouse{

  constructor( firstName, lastName ){
    this.firstName = firstName === '' ? null : firstName
    this.lastName = lastName === '' ? null : lastName
  }
  
  getFullName(){
    let fullname = this.firstName+" "+this.lastName

    if (!this.firstName && !this.lastName) {
      fullname = ''
    } else if (!this.firstName) {
      fullname = this.lastName;
    } else if (!this.lastName) {
      fullname = this.firstName;
    }

    return fullname
  }
  
}
