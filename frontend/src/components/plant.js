class Plant {
    constructor(name, image, description, cares) {
        this.name = name;
        this.image = image;
        this.description = this.description;
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
      const ingHeader = document.createElement('h3')
      ingHeader.innerHTML = "Cares:"
      cardInfo.appendChild(ingHeader)
      const ul = document.createElement('ul')
      for (let care of this.cares) {
        let li = document.createElement('li')
        li.innerHTML = care
        ul.appendChild(li)
      }
      cardInfo.appendChild(ul)
      const footer = document.createElement('div')
      footer.className = "card-footer"
      const link = document.createElement('a')
      link.href = this.image
      link.innerHTML = "View Plant Here"
      footer.appendChild(link)
      card.appendChild(cardInfo)
      card.appendChild(footer)
      document.getElementById('plant-card-container').appendChild(card)
    }
  }