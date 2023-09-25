window.addEventListener('message', (event) => {
	let data = event.data
	if(data.action == 'TogglePhone') {
        console.log(data.info)
        if (data.info == true) {
            $('.phoneRoot').css('display','block')
        }else{
            $('.phoneRoot').css('display','none')
        }
    } else if (data.action = 'sendMessage')
    {
    } else if (data.action = 'sendMessage')
    {
    } else if (data.action = 'sendMessage')
    {
    } else if (data.action = 'sendMessage')
    {
    } else if (data.action = 'sendMessage')
    {
    } else if (data.action = 'sendMessage')
    {
    }
})