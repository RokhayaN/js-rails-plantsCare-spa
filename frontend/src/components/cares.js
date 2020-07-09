class CaresAdapter {
    constructor() {
      this.baseURL = "http://localhost:3001/api/v1/cares"
    }
  
    getCares() {
      return fetch(this.baseURL)
      .then(response => response.json())
      .then(json => (json.data))
    }
  }