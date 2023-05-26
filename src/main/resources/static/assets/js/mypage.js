





// 아래 hover 박스 클릭시 발생되는 이벤트 작성

document.addEventListener("DOMContentLoaded", function() {
    // .top-button-tag의 모든 p 태그 선택
    var pTags = document.querySelectorAll(".top-button-tag p");
  
    // 각 p 태그에 클릭 이벤트 리스너 추가
    pTags.forEach(function(pTag) {
      pTag.addEventListener("click", function() {
        // 모든 .mydetail-contents 요소 선택
        var detailContents = document.querySelectorAll(".mydetail-contents");
  
        // 각 .mydetail-contents 요소에 대해 숨김 처리
        detailContents.forEach(function(detailContent) {
          detailContent.style.display = "none";
        });
  
        // 클릭한 p 태그에 해당하는 .mydetail-contents 요소 선택
        var targetContent = this.textContent === "내가 쓴 리뷰" ?
          document.querySelector(".mydetail-myreview") :
          document.querySelector(".mydetail-myinterest");
  
        // 선택한 .mydetail-contents 요소를 표시
        targetContent.style.display = "block";
      });
    });
  });
  