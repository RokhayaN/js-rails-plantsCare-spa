class Plant {
    constructor(name, image, description, cares) {
        this.name = name;
        this.image = image;
        this.description = description;
        this.cares = cares;
    }
  
    createPlantCard() {
      const card = document.createElement('div')
      card.className = "card"
      const img = document.createElement('img')
      img.src = this.image
      card.appendChild(img)
      const cardInfo = document.createElement('div')
      cardInfo.className = "card-info"
      const name = document.createElement('h1')
      name.innerHTML = this.name
      cardInfo.appendChild(name)
      const description = document.createElement('h5')
      description.innerHTML = this.description
      cardInfo.appendChild(description)
      const ingHeader = document.createElement('h3')
      ingHeader.innerHTML = "Cares:"
      cardInfo.appendChild(ingHeader)
      const ul = document.createElement('ul')
      for (let care of this.cares) {
        let li = document.createElement('li')
        li.innerHTML = care
        ul.appendChild(li)}
      cardInfo.appendChild(ul) 
      card.appendChild(cardInfo)
     document.getElementById('plant-card-container').appendChild(card)
    }
  }