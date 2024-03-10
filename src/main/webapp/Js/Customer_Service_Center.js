changeList("TOP7");

let liList = [...document.querySelector("[role=tablist").children];
liList.forEach(target => {
	target.addEventListener("click",event=>{
		const falseList = [...event.target.parentElement.children];
		falseList.forEach(li=>{
			li.setAttribute("aria-selected","false")
		})
		event.target.setAttribute("aria-selected","true")
		const category =event.target.getAttribute("value");
		changeList(category)
	})
});

function changeList(category){
	fetch("QAcategoryService.do",
		{
			method : "POST",
			headers:{
				"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
	    	},
	    	body: "category="+category
	    }
	).then(res=>res.text())
	.then(data=>{
		if(data === null){
			document.querySelector(".boardlist").innerHTML="no data"
		}else{
			document.querySelector(".boardlist").innerHTML=data
			
			let btnlist = [...document.querySelector(".boardlist").children];
			console.log(btnlist);
			btnlist.forEach(target=>{
				target.firstChild.addEventListener("click",event=>{
					console.log(target);				
					const li = target;
					const qacontent = li.lastChild;
					if(qacontent.classList.contains("hidden")){
						qacontent.classList.remove("hidden");
						li.firstChild.children.item(1).classList.add("fa-rotate-180");
					}else{
						qacontent.classList.add("hidden");
						li.firstChild.children.item(1).classList.remove("fa-rotate-180");
					}
					
				})
			})
		}
	})
	.catch(error => console.log(error))
}


//전화번호 클릭
$('.callbtn').click(function(){
	alert('준비중');
});
// 문의하기
$('.askbtn').click(function(){
	location.href = 'Customer_Service_Center.do';
});