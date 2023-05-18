// 사소한평가남기기 버튼 눌렀을때 모달창 띄워주는 js
var $modal = document.getElementById("myModal");
var $btn = document.getElementById("openModal");
var $span = document.getElementsByClassName("close")[0];

$btn.onclick = e => {
    alert('읽힘?')
    $modal.style.display = "block";
}

$span.onclick = e => {
    $modal.style.display = "none";
}
// 모달창 제외한 밖을 눌렀을때 모달창 꺼지게
// window.onclick = function (event) {
//     if (event.target == modal) {
//         modal.style.display = "none";
//     }
// }



// 사과가 3개 이상으로 선택되면 온전한 사과
// 사과가 2개 이하로 선택되면 먹은 사과로 변경 js
// JavaScript 코드
// const starCheckboxes = document.querySelectorAll('.star-checkbox');
// const imageTag = document.getElementById('modal-rate-icon');

// // 체크박스 이벤트 리스너 등록
// starCheckboxes.forEach(checkbox => {
//     checkbox.addEventListener('change', () => {
//         const checkedCount = Array.from(starCheckboxes).filter(checkbox => checkbox.checked).length;

//         // 3개 이상의 별이 선택되었을 때 이미지 태그의 이미지 주소 변경
//         if (checkedCount >= 3) {
//             imageTag.src = '/assets/img/apple.png';  // 원하는 이미지 주소로 변경해주세요
//         } else {
//             imageTag.src = '/assets/img/xapple.png';  // 2개 이하로 선택되었을 때 다른 이미지 주소로 변경해주세요
//         }
//     });
// });
