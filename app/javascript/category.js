window.addEventListener('load', function(){

  const category = this.document.getElementById("item_category_id");
  category.addEventListener('change', () => {
    const categoryAll = this.document.querySelector(".category-option-all")
    const categoryFace = this.document.querySelector(".category-face")
    const categoryEye = this.document.querySelector(".category-eye")
    const categoryLip = this.document.querySelector(".category-lip")
    if (category.value == 2 ){
      categoryFace.style.visibility ="visible"
      categoryEye.style.display = "none"
      categoryLip.style.display = "none"
      categoryAll.style.display = "none"
    } else if (category.value == "3"){
      categoryFace.style.display = "none"
      categoryEye.style.visibility ="visible"
      categoryLip.style.display = "none"
      categoryAll.style.display = "none"
    } else if (category.value == "4"){
      categoryFace.style.display = "none"
      categoryEye.style.display = "none"
      categoryLip.style.visibility ="visible"
      categoryAll.style.display = "none"
    } else {
      categoryAll.style.visibility ="visible"
      categoryFace.style.display = "none"
      categoryEye.style.display = "none"
      categoryLip.style.display = "none"
    }
  });
});