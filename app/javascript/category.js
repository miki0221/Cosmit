window.addEventListener('load', function(){

  const category = this.document.getElementById("item_category_id");
  category.addEventListener('change', () => {
    const categoryAll = this.document.querySelector(".category-option-all")
    const categoryFace = this.document.querySelector(".category-face")
    const categoryEye = this.document.querySelector(".category-eye")
    const categoryLip = this.document.querySelector(".category-lip")
    if (category.value == 2 ){
      categoryFace.style.visibility ="visible"
      categoryEye.style.visibility ="hidden"
      categoryLip.style.visibility ="hidden"
      categoryAll.style.visibility ="hidden"
    } else if (category.value == "3"){
      categoryFace.style.visibility ="hidden"
      categoryEye.style.visibility ="visible"
      categoryLip.style.visibility ="hidden"
      categoryAll.style.visibility ="hidden"
    } else if (category.value == "4"){
      categoryFace.style.visibility ="hidden"
      categoryEye.style.visibility ="hidden"
      categoryLip.style.visibility ="visible"
      categoryAll.style.visibility ="hidden"
    } else {
      categoryAll.style.visibility ="visible"
    }
  });
});