changeList("TOP7");

let liList = [...document.querySelector("[role=tablist").children];
liList.forEach(target => {
	target.addEventListener("click",event=>{
		console.log(event.target);
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
			document.querySelector(".boardlist").innerHTML=
			data
		}
	})
	.catch(error => console.log(error))
}
