WJ = {
	bold: function(){
		document.execCommand("Bold");
	},
	italic: function(){
		document.execCommand("Italic");
	},
	underline: function(){
		document.execCommand("Underline");
	},
	changeFontType: function(fontName){
		document.execCommand('fontName', false, fontName);
	},
	changeFontSize: function(fontSize){
		document.execCommand('fontSize', false, fontSize);
	},
	justifyLeft: function(){
		document.execCommand("justifyLeft");
	},
	justifyCenter: function(){
		document.execCommand("justifyCenter");
	},
	justifyRight: function(){
		document.execCommand("justifyRight");
	},
	insertOrderedList: function(){
		document.execCommand("insertOrderedList");
	},
	insertUnorderedList: function(){
		document.execCommand("insertUnorderedList");
	}
};
/*
function bold(){
    document.execCommand("Bold");
}

function italic(){
    document.execCommand("Italic");
}

function underline(){
    document.execCommand("Underline");
}

function changeFontType(fontName){
	document.execCommand('fontName', false, fontName);
}
function changeFontSize(fontSize){
	document.execCommand('fontSize', false, fontSize);
}
*/