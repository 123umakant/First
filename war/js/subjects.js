// JavaScript Document
//populate subjects based on course
function getSelectedText(id) {
    var elt = document.getElementById(id);
    if (elt.selectedIndex == -1)
        return null;
    return elt.options[elt.selectedIndex].text;
}

function feeslist(course,sessions)
{ var sessionsinmonth=sessions*4;
var basicfrom,basicto,standardfrom,standardto,expertisefrom,expertisefrom;
if(course == "Nursery School")
{   basicfrom=125*sessionsinmonth;
    basicto=150*sessionsinmonth;
    standardfrom=basicto;
    standardto=200*sessionsinmonth;
    expertisefrom=standardto;
    expertiseto=250*sessionsinmonth;
	document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+basicfrom+" - "+basicto+"\" name=\"optradio\">Basic Rs."+basicfrom+" - "+basicto+ " ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+standardfrom+" - "+standardto+"\" name=\"optradio\">Standard Rs."+standardfrom+" - "+standardto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+expertisefrom+" - "+expertiseto+"\" name=\"optradio\">Expertise Rs."+expertisefrom+" - "+expertiseto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
}else if(course == "Class I" ||course == "Class II" ||course == "Class III")
		{  basicfrom=150*sessionsinmonth;
	    basicto=180*sessionsinmonth;
	    standardfrom=basicto;
	    standardto=220*sessionsinmonth;
	    expertisefrom=standardto;
	    expertiseto=250*sessionsinmonth;
		document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+basicfrom+" - "+basicto+"\" name=\"optradio\">Basic Rs."+basicfrom+" - "+basicto+ " ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+standardfrom+" - "+standardto+"\" name=\"optradio\">Standard Rs."+standardfrom+" - "+standardto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+expertisefrom+" - "+expertiseto+"\" name=\"optradio\">Expertise Rs."+expertisefrom+" - "+expertiseto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
		}
		else if(course == "Class IV" ||course == "Class V")
		{  
			 basicfrom=180*sessionsinmonth;
			    basicto=220*sessionsinmonth;
			    standardfrom=basicto;
			    standardto=250*sessionsinmonth;
			    expertisefrom=standardto;
			    expertiseto=280*sessionsinmonth;
				document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+basicfrom+" - "+basicto+"\" name=\"optradio\">Basic Rs."+basicfrom+" - "+basicto+ " ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+standardfrom+" - "+standardto+"\" name=\"optradio\">Standard Rs."+standardfrom+" - "+standardto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+expertisefrom+" - "+expertiseto+"\" name=\"optradio\">Expertise Rs."+expertisefrom+" - "+expertiseto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";				
		}

		else if(course == "Class VI"||course == "Class VII"||course == "Class VIII")
		{
			 basicfrom=200*sessionsinmonth;
			    basicto=230*sessionsinmonth;
			    standardfrom=basicto;
			    standardto=260*sessionsinmonth;
			    expertisefrom=standardto;
			    expertiseto=300*sessionsinmonth;
				document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+basicfrom+" - "+basicto+"\" name=\"optradio\">Basic Rs."+basicfrom+" - "+basicto+ " ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+standardfrom+" - "+standardto+"\" name=\"optradio\">Standard Rs."+standardfrom+" - "+standardto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+expertisefrom+" - "+expertiseto+"\" name=\"optradio\">Expertise Rs."+expertisefrom+" - "+expertiseto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			}
		else if(course == "Class IX"||course == "Class X")
		{
			 basicfrom=270*sessionsinmonth;
			    basicto=300*sessionsinmonth;
			    standardfrom=basicto;
			    standardto=330*sessionsinmonth;
			    expertisefrom=standardto;
			    expertiseto=400*sessionsinmonth;
				document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+basicfrom+" - "+basicto+"\" name=\"optradio\">Basic Rs."+basicfrom+" - "+basicto+ " ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+standardfrom+" - "+standardto+"\" name=\"optradio\">Standard Rs."+standardfrom+" - "+standardto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+expertisefrom+" - "+expertiseto+"\" name=\"optradio\">Expertise Rs."+expertisefrom+" - "+expertiseto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
								}
		else if(course == "Class XI"||course == "Class XII")
		{
			 basicfrom=400*sessionsinmonth;
			    basicto=500*sessionsinmonth;
			    standardfrom=basicto;
			    standardto=600*sessionsinmonth;
			    expertisefrom=standardto;
			    expertiseto=800*sessionsinmonth;
				document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+basicfrom+" - "+basicto+"\" name=\"optradio\">Basic Rs."+basicfrom+" - "+basicto+ " ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+standardfrom+" - "+standardto+"\" name=\"optradio\">Standard Rs."+standardfrom+" - "+standardto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+expertisefrom+" - "+expertiseto+"\" name=\"optradio\">Expertise Rs."+expertisefrom+" - "+expertiseto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
						}
		else if(course == "B.COM/ M.COM")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Accounting For Managerial Decisions\" name=\"subjects\">Accounting For Managerial Decisions</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Banking & Insurance Services\" name=\"subjects\">Banking & Insurance Services</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Business Economics\" name=\"subjects\">Business Economics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Business Environment\" name=\"subjects\">Business Environment</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Business Laws\" name=\"subjects\">Business Laws</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Business Mathematics\" name=\"subjects\">Business Mathematics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Computer Applications In Business\" name=\"subjects\">Computer Applications In Business</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Corporate Accounting\" name=\"subjects\">Corporate Accounting</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Corporate Accounting & Auditing\" name=\"subjects\">Corporate Accounting & Auditing</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Cost Accounting\" name=\"subjects\">Cost Accounting</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"E-commerce\" name=\"subjects\">E-commerce</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Economics\" name=\"subjects\">Economics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Final Research Project\" name=\"subjects\">Final Research Project</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Financial Management\" name=\"subjects\">Financial Management</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Human Resource Management\" name=\"subjects\">Human Resource Management</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Income Tax\" name=\"subjects\">Income Tax</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Industrial Relations And Labour Laws\" name=\"subjects\">Industrial Relations And Labour Laws</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"International Accounting\" name=\"subjects\">International Accounting</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Macro Economics\" name=\"subjects\">Macro Economics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Management Accounting\" name=\"subjects\">Management Accounting</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Management Decision Techniques\" name=\"subjects\">Management Decision Techniques</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Management Economics\" name=\"subjects\">Management Economics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Marketing Management\" name=\"subjects\">Marketing Management</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Micro Economics\" name=\"subjects\">Micro Economics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Office Management & Secretarial Practice\" name=\"subjects\">Office Management & Secretarial Practice</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Principles Of Management\" name=\"subjects\">Principles Of Management</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Statistical Analysis For Business\" name=\"subjects\">Statistical Analysis For Business</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Statistics\" name=\"subjects\">Statistics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Tally\" name=\"subjects\">Tally</label></div></li> </ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.500 - 600\" name=\"optradio\">Basic Rs.500 - 600<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.600 - 700\" name=\"optradio\">Standard Rs.600 - 700<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.700 - 1000\" name=\"optradio\">Expertise Rs.700 - 1000<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate per Session Budget ?";
						}
		else if(course == "Spoken English")
		{
			 basicfrom=400*sessionsinmonth;
			    basicto=500*sessionsinmonth;
			    standardfrom=basicto;
			    standardto=700*sessionsinmonth;
			    expertisefrom=standardto;
			    expertiseto=1000*sessionsinmonth;
				document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+basicfrom+" - "+basicto+"\" name=\"optradio\">Basic Rs."+basicfrom+" - "+basicto+ " ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+standardfrom+" - "+standardto+"\" name=\"optradio\">Standard Rs."+standardfrom+" - "+standardto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+expertisefrom+" - "+expertiseto+"\" name=\"optradio\">Expertise Rs."+expertisefrom+" - "+expertiseto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
						}
		else if(course == "Language")
		{
			basicfrom=400*sessionsinmonth;
		    basicto=500*sessionsinmonth;
		    standardfrom=basicto;
		    standardto=600*sessionsinmonth;
		    expertisefrom=standardto;
		    expertiseto=800*sessionsinmonth;
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+basicfrom+" - "+basicto+"\" name=\"optradio\">Basic Rs."+basicfrom+" - "+basicto+ " ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+standardfrom+" - "+standardto+"\" name=\"optradio\">Standard Rs."+standardfrom+" - "+standardto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs."+expertisefrom+" - "+expertiseto+"\" name=\"optradio\">Expertise Rs."+expertisefrom+" - "+expertiseto+" ("+sessionsinmonth+" Sessions in month)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
						}


}

function updatesubjectlist()
{ var course=document.querySelector('input[name="Select1"]:checked').value;

if(course == "Nursery School")
{
	document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li></ul>";
	document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.2,500 - 3,500\" name=\"optradio\">Basic Rs.2,500 - 3,500  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.3,500 - 4,500\" name=\"optradio\">Standard Rs.3,500 - 4,500  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.4,500 - 5,500\" name=\"optradio\">Expertise Rs.4,500 - 5,500  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
	document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";
}else if(course == "Class I")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.3,000 - 4,000\" name=\"optradio\">Basic Rs.3,000 - 4,000  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.4,000 - 5,000\" name=\"optradio\">Standard Rs.4,000 - 5,000  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.5,000 - 6,000\" name=\"optradio\">Expertise Rs.5,000 - 6,000  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";

		}
		else if(course == "Class II")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.3,000 - 4,000\" name=\"optradio\">Basic Rs.3,000 - 4,000  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.4,000 - 5,000\" name=\"optradio\">Standard Rs.4,000 - 5,000  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.5,000 - 6,000\" name=\"optradio\">Expertise Rs.5,000 - 6,000  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";

		}
		else if(course == "Class III")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.3,000 - 4,000\" name=\"optradio\">Basic Rs.3,000 - 4,000  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.4,000 - 5,000\" name=\"optradio\">Standard Rs.4,000 - 5,000  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.5,000 - 6,000\" name=\"optradio\">Expertise Rs.5,000 - 6,000  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";

		}
		else if(course == "Class IV")
		{  
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"English\" name=\"subjects\">English</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Science\" name=\"subjects\">Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Social Science\" name=\"subjects\">Social Science</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.3,500 - 4,500\" name=\"optradio\">Basic Rs.3,500 - 4,500  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.4,500 - 5,500\" name=\"optradio\">Standard Rs.4,500 - 5,500  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.5,500 - 6,500\" name=\"optradio\">Expertise Rs.5,500 - 6,500  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";

		}
		else if(course == "Class V")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"English\" name=\"subjects\">English</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Science\" name=\"subjects\">Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Social Science\" name=\"subjects\">Social Science</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.3,500 - 4,500\" name=\"optradio\">Basic Rs.3,500 - 4,500  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.4,500 - 5,500\" name=\"optradio\">Standard Rs.4,500 - 5,500  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.5,500 - 6,500\" name=\"optradio\">Expertise Rs.5,500 - 6,500  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";

		}
		else if(course == "Class VI")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"English\" name=\"subjects\">English</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Science\" name=\"subjects\">Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Social Science\" name=\"subjects\">Social Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Sanskrit\" name=\"subjects\">Sanskrit</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Hindi\" name=\"subjects\">Hindi</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"French\" name=\"subjects\">French</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"German\" name=\"subjects\">German</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.4,000 - 5,000\" name=\"optradio\">Basic Rs.4,000 - 5,000  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.5,000 - 6,000\" name=\"optradio\">Standard Rs.5,000 - 6,000  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.6,000 - 7,000\" name=\"optradio\">Expertise Rs.6,000 - 7,000  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";
			}
		else if(course == "Class VII")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"English\" name=\"subjects\">English</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Science\" name=\"subjects\">Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Social Science\" name=\"subjects\">Social Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Sanskrit\" name=\"subjects\">Sanskrit</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Hindi\" name=\"subjects\">Hindi</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"French\" name=\"subjects\">French</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"German\" name=\"subjects\">German</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.4,000 - 5,000\" name=\"optradio\">Basic Rs.4,000 - 5,000  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.5,000 - 6,000\" name=\"optradio\">Standard Rs.5,000 - 6,000  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.6,000 - 7,000\" name=\"optradio\">Expertise Rs.6,000 - 7,000  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";
								}
		else if(course == "Class VIII")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"English\" name=\"subjects\">English</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Science\" name=\"subjects\">Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Social Science\" name=\"subjects\">Social Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Sanskrit\" name=\"subjects\">Sanskrit</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Hindi\" name=\"subjects\">Hindi</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"French\" name=\"subjects\">French</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"German\" name=\"subjects\">German</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.4,000 - 5,000\" name=\"optradio\">Basic Rs.4,000 - 5,000  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.5,000 - 6,000\" name=\"optradio\">Standard Rs.5,000 - 6,000  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.6,000 - 7,000\" name=\"optradio\">Expertise Rs.6,000 - 7,000  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";
						}
		else if(course == "Class IX")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"English\" name=\"subjects\">English</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Science\" name=\"subjects\">Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Social Science\" name=\"subjects\">Social Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Sanskrit\" name=\"subjects\">Sanskrit</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Hindi\" name=\"subjects\">Hindi</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"French\" name=\"subjects\">French</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"German\" name=\"subjects\">German</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.5,500 - 6,500\" name=\"optradio\">Basic Rs.5,500 - 6,500  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.6,500 - 7,500\" name=\"optradio\">Standard Rs.6,500 - 7,500  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.7,500 - 8,500\" name=\"optradio\">Expertise Rs.7,500 - 8,500  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";
						}
		else if(course == "Class X")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"All Subjects\" name=\"subjects\">All Subjects</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"English\" name=\"subjects\">English</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Science\" name=\"subjects\">Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Social Science\" name=\"subjects\">Social Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Sanskrit\" name=\"subjects\">Sanskrit</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Hindi\" name=\"subjects\">Hindi</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"French\" name=\"subjects\">French</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"German\" name=\"subjects\">German</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.5,500 - 6,500\" name=\"optradio\">Basic Rs.5,500 - 6,500  (20-24 Sessions)<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.6,500 - 7,500\" name=\"optradio\">Standard Rs.6,500 - 7,500  (20-24 Sessions)<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.7,500 - 8,500\" name=\"optradio\">Expertise Rs.7,500 - 8,500  (20-24 Sessions)<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate Monthly Budget ?";
						}
		else if(course == "Class XI")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"English\" name=\"subjects\">English</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Physics\" name=\"subjects\">Physics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Chemistry\" name=\"subjects\">Chemistry</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Biology\" name=\"subjects\">Biology</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Computer Science\" name=\"subjects\">Computer Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Accounts\" name=\"subjects\">Accounts</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Business Studies\" name=\"subjects\">Business Studies</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Economics\" name=\"subjects\">Economics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Information Practices\" name=\"subjects\">Infomation Practices</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Geography\" name=\"subjects\">Geography</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"History\" name=\"subjects\">History</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Hindi\" name=\"subjects\">Hindi</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Psychology\" name=\"subjects\">Psychology</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Sanskrit\" name=\"subjects\">Sanskrit</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Physical Education\" name=\"subjects\">Physical Education</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Art & Creativity\" name=\"subjects\">Art & Creativity</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.400 - 500\" name=\"optradio\">Basic Rs.400 - 500<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.500 - 600\" name=\"optradio\">Standard Rs.500 - 600<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.600 - 800\" name=\"optradio\">Expertise Rs.600 - 800<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate per Session Budget ?";
						}
		else if(course == "Class XII")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"English\" name=\"subjects\">English</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Physics\" name=\"subjects\">Physics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Chemistry\" name=\"subjects\">Chemistry</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Biology\" name=\"subjects\">Biology</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Computer Science\" name=\"subjects\">Computer Science</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Accounts\" name=\"subjects\">Accounts</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Business Studies\" name=\"subjects\">Business Studies</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Economics\" name=\"subjects\">Economics</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Information Practices\" name=\"subjects\">Infomation Practices</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Geography\" name=\"subjects\">Geography</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"History\" name=\"subjects\">History</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Hindi\" name=\"subjects\">Hindi</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Psychology\" name=\"subjects\">Psychology</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Sanskrit\" name=\"subjects\">Sanskrit</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Physical Education\" name=\"subjects\">Physical Education</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Art & Creativity\" name=\"subjects\">Art & Creativity</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.400 - 500\" name=\"optradio\">Basic Rs.400 - 500<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.500 - 600\" name=\"optradio\">Standard Rs.500 - 600<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.600 - 800\" name=\"optradio\">Expertise Rs.600 - 800<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate per Session Budget ?";
						}
		else if(course == "B.COM/ M.COM")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Accounting For Managerial Decisions\" name=\"subjects\">Accounting For Managerial Decisions</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Banking & Insurance Services\" name=\"subjects\">Banking & Insurance Services</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Business Economics\" name=\"subjects\">Business Economics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Business Environment\" name=\"subjects\">Business Environment</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Business Laws\" name=\"subjects\">Business Laws</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Business Mathematics\" name=\"subjects\">Business Mathematics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Computer Applications In Business\" name=\"subjects\">Computer Applications In Business</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Corporate Accounting\" name=\"subjects\">Corporate Accounting</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Corporate Accounting & Auditing\" name=\"subjects\">Corporate Accounting & Auditing</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Cost Accounting\" name=\"subjects\">Cost Accounting</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"E-commerce\" name=\"subjects\">E-commerce</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Economics\" name=\"subjects\">Economics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Final Research Project\" name=\"subjects\">Final Research Project</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Financial Management\" name=\"subjects\">Financial Management</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Human Resource Management\" name=\"subjects\">Human Resource Management</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Income Tax\" name=\"subjects\">Income Tax</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Industrial Relations And Labour Laws\" name=\"subjects\">Industrial Relations And Labour Laws</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"International Accounting\" name=\"subjects\">International Accounting</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Macro Economics\" name=\"subjects\">Macro Economics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Management Accounting\" name=\"subjects\">Management Accounting</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Management Decision Techniques\" name=\"subjects\">Management Decision Techniques</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Management Economics\" name=\"subjects\">Management Economics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Marketing Management\" name=\"subjects\">Marketing Management</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Mathematics\" name=\"subjects\">Mathematics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Micro Economics\" name=\"subjects\">Micro Economics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Office Management & Secretarial Practice\" name=\"subjects\">Office Management & Secretarial Practice</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Principles Of Management\" name=\"subjects\">Principles Of Management</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Statistical Analysis For Business\" name=\"subjects\">Statistical Analysis For Business</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Statistics\" name=\"subjects\">Statistics</label></div></li> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Tally\" name=\"subjects\">Tally</label></div></li> </ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.500 - 600\" name=\"optradio\">Basic Rs.500 - 600<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.600 - 700\" name=\"optradio\">Standard Rs.600 - 700<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.700 - 1000\" name=\"optradio\">Expertise Rs.700 - 1000<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate per Session Budget ?";
						}
		else if(course == "Spoken English")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Spoken English\" name=\"subjects\">Spoken English</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.400 - 500\" name=\"optradio\">Basic Rs.400 - 500<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.500 - 700\" name=\"optradio\">Standard Rs.500 - 700<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.700 - 1000\" name=\"optradio\">Expertise Rs.700 - 1000<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate per Session Budget ?";
						}
		else if(course == "Language")
		{
			document.getElementById('subjectslist').innerHTML = "<ul class=\"enquiry-ul\"> <li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"German\" name=\"subjects\">German</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"French\" name=\"subjects\">French</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Spanish\" name=\"subjects\">Spanish</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Hindi\" name=\"subjects\">Hindi</label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-labelone\"><input type=\"checkbox\" class=\"enquiry-checkbox\" value=\"Sanskrit\" name=\"subjects\">Sanskrit</label></div></li></ul>";
			document.getElementById('budget').innerHTML="<ul class=\"enquiry-ul\"><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.400 - 500\" name=\"optradio\">Basic Rs.400 - 500<p>Teacher's experience upto 2 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.500 - 600\" name=\"optradio\">Standard Rs.500 - 600<p>Teacher's experience 2-5 yrs</p></label></div></li><li class=\"enquiry-li\"><div class=\"radio\"><label class=\"enquiry-label\"><input type=\"radio\" value=\"Rs.600 - 800\" name=\"optradio\">Expertise Rs.600 - 800<p>Teacher's experience 5+ yrs</p></label></div></li></ul>";
			document.getElementById('budget-head').innerHTML="Your approximate per Session Budget ?";
						}
}
function updateModelList(id){
var value = getSelectedText(id);
if(value == "")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option>";
}else if(value == "B.COM/ M.COM")
{
document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option   value=\"Accounting For Managerial Decisions\" >Accounting For Managerial Decisions </option><option   value=\"Banking & Insurance Services\" >Banking & Insurance Services</option><option   value=\"Business Economics\" >Business Economics</option><option   value=\"Business Environment\" >Business Environment</option><option   value=\"Business Laws\" >Business Laws</option><option   value=\"Business Mathematics\" >Business Mathematics</option><option   value=\"Computer Applications In Business\" >Computer Applications In Business</option><option   value=\"Corporate Accounting\" >Corporate Accounting</option><option   value=\"Corporate Accounting & Auditing\" >Corporate Accounting & Auditing</option><option   value=\"Cost Accounting\" >Cost Accounting</option><option   value=\"E-commerce\" >E-commerce</option><option   value=\"Economics\" >Economics</option><option   value=\"Final Research Project\" >Final Research Project</option><option   value=\"Financial Management\" >Financial Management</option><option   value=\"Human Resource Management\" >Human Resource Management</option><option   value=\"Income Tax\" >Income Tax</option><option   value=\"Industrial Relations And Labour Laws\" >Industrial Relations And Labour Laws</option><option   value=\"International Accounting\" >International Accounting</option><option   value=\"Macro Economics\" >Macro Economics</option><option   value=\"Management Accounting\" >Management Accounting</option><option   value=\"Management Decision Techniques\" >Management Decision Techniques</option><option   value=\"Management Economics\" >Management Economics</option><option   value=\"Marketing Management\" >Marketing Management</option><option   value=\"Mathematics\" >Mathematics</option><option   value=\"Micro Economics\" >Micro Economics</option><option   value=\"Office Management & Secretarial Practice\" >Office Management & Secretarial Practice</option><option   value=\"Principles Of Management\" >Principles Of Management</option><option   value=\"Statistical Analysis For Business\" >Statistical Analysis For Business</option><option   value=\"Statistics\" >Statistics</option><option   value=\"Tally\" >Tally</option>";
}
else if(value == "B-Ed")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"Philosophy\" >Philosophy </option>";
}
else if(value == "B.TECH")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Antennas & Propagation\" >Antennas & Propagation</option><option value=\"Applied Mechanics\" >Applied Mechanics</option><option value=\"Chemical Engineering\" >Chemical Engineering</option><option value=\"Chemistry\" >Chemistry</option><option value=\"Circuit & System\" >Circuit & System</option><option value=\"Civil Engineering\" >Civil Engineering</option><option value=\"Communication System\" >Communication System</option><option value=\"Computer Science\" >Computer Science</option><option value=\"Computers/IT\" >Computers/IT</option><option value=\"Consumer Electronics\" >Consumer Electronics</option><option value=\"Control Engineering\" >Control Engineering</option><option value=\"Electrical Engineering\" >Electrical Engineering</option><option value=\"Electrical Machines\" >Electrical Machines</option><option value=\"Electronics\" >Electronics</option><option value=\"Electronics/Telecom\" >Electronics/Telecom</option><option value=\"Engineering Drawing\" >Engineering Drawing</option><option value=\"Filter Design\" >Filter Design</option><option value=\"Humanity\" >Humanity</option><option value=\"Industrial Engineering\" >Industrial Engineering</option><option value=\"Java Language\" >Java Language</option><option value=\"Machine Drawing\" >Machine Drawing</option><option value=\"Manufacturing Process\" >Manufacturing Process</option><option value=\"Mathematics\" >Mathematics</option><option value=\"Mechanical Engineering\" >Mechanical Engineering</option><optionvalue=\"Microprocessor\" >Microprocessor</option><option value=\"Physics\" >Physics</option><option value=\"Workshop\" >Workshop</option>";
}else if(value == "BCA-MCA")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Accounting & Financial Mgmt\" >Accounting & Financial Mgmt</option><option value=\"Artificial Intelligence\" >Artificial Intelligence</option><option value=\"Basic Accounting\" >Basic Accounting</option><option value=\"Communication & Soft Skills\" >Communication & Soft Skills</option><option value=\"Computer Based Optimization Methods\" >Computer Based Optimization Methods</option><option value=\"Computer Graphics\" >Computer Graphics</option><option value=\"Computer Mathematical Foundation\" >Computer Mathematical Foundation</option><option value=\"Computer Networks\" >Computer Networks</option><option value=\"Computer System Architecture\" >Computer System Architecture</option><option value=\"Data Base Management System\" >Data Base Management System</option><option value=\"Data Communication & Networks\" >Data Communication & Networks</option><option value=\"Data Structure\" >Data Structure</option><option value=\"Digital Ckt. & Logic Design\" >Digital Ckt. & Logic Design</option><option value=\"Handling Operating Systems\" >Handling Operating Systems</option><option value=\"Information Technology\" >Information Technology</option><option value=\"Internet Applications And Java\" >Internet Applications And Java</option><option value=\"Management Information System\" >Management Information System</option><option value=\"Math - Computer Oriented Methods\" >Math - Computer Oriented Methods</option><option value=\"Math - Discrete\" >Math - Discrete</option><option value=\"Microprocessor\" >Microprocessor</option><option value=\"Object Oriented Programming In C++\" >Object Oriented Programming In C++</option><option value=\"Operating System\" >Operating System</option><option value=\"Operation Research\" >Operation Research</option><option value=\"Principles Of Management\" >Principles Of Management</option><option value=\"Programming In C\" >Programming In C</option><option value=\"RDBMS\" >RDBMS</option><option value=\"Software Engineering\" >Software Engineering</option><option value=\"Software Lab\" >Software Lab</option><option value=\"System Analysis And Design\" >System Analysis And Design</option><option value=\"System Software\" >System Software</option><option value=\"Visual Basic Programming\" >Visual Basic Programming</option>";
}else if(value == "B.M.S")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Accounting For Manager\" >Accounting For Manager</option>";
}else if(value == "BBS")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"Advanced Human Resource Management\" >Advanced Human Resource Management</option><option  value=\"Advertising & Sales Promotion Management\" >Advertising & Sales Promotion Management</option><option  value=\"Applied Macro Economics\" >Applied Macro Economics</option><option  value=\"Basic Statics\" >Basic Statics</option><option  value=\"Business Communication\" >Business Communication</option><option  value=\"Business Environment\" >Business Environment</option><option  value=\"Business Policy & Strategy\" >Business Policy & Strategy</option><option  value=\"Capital Market & Security Analysis\" >Capital Market & Security Analysis</option><option  value=\"Compensation Management\" >Compensation Management</option><option  value=\"Computing Tools For Business Management\" >Computing Tools For Business Management</option><option  value=\"Consumer Behaviour\" >Consumer Behaviour</option><option  value=\"Corporate Taxation & Financial Planing\" >Corporate Taxation & Financial Planing</option><option  value=\"Cost Accounting\" >Cost Accounting</option><option  value=\"Creative Selling\" >Creative Selling</option><option  value=\"Design & Management Of Information System\" >Design & Management Of Information System</option><option  value=\"Financial Accounting\" >Financial Accounting</option><option  value=\"Financial Management\" >Financial Management</option><option  value=\"Industrial Relation\" >Industrial Relation</option><option  value=\"Information Technology In Management\" >Information Technology In Management</option><option  value=\"International Finance\" >International Finance</option><option  value=\"International Marketing\" >International Marketing</option><option  value=\"Introduction To Database Management System\" >Introduction To Database Management System</option><option  value=\"Introduction To Modern Business\" >Introduction To Modern Business</option><option  value=\"Market Research\" >Market Research</option><option  value=\"Merchant Banking & Financial Service\" >Merchant Banking & Financial Service</option><option  value=\"Micro Economics & Its Application\" >Micro Economics & Its Application</option><option  value=\"Principle Of Marketing\" >Principle Of Marketing</option><option  value=\"Production And Operation Management\" >Production And Operation Management</option><option  value=\"Public Relation & Corporate Image\" >Public Relation & Corporate Image</option><option  value=\"Quantiative Technique Management\" >Quantiative Technique Management</option><option  value=\"Sales & Distribution Management\" >Sales & Distribution Management</option><option  value=\"Security Analysis & Portfolio Management\" >Security Analysis & Portfolio Management</option><option  value=\"Summer Training\" >Summer Training</option><option  value=\"Training & Development\" >Training & Development</option>";
}else if(value == "Business Training")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"Financial Accountant\" >Financial Accountant</option><option  value=\"Financial Management\" >Financial Management</option>";
}else if(value == "CAT(Common Admission Test)")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"Data Enterpretation\" \">Data Enterpretation</option><option  value=\"Logical Reasoning\" \">Logical Reasoning</option><option  value=\"Reading Comprehension\" \">Reading Comprehension</option><option  value=\"Quantitative Aptitude\" \">Quantitative Aptitude</option><option  value=\"Vocabulary\" \">Vocabulary</option>";
}else if(value == "CPT")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"CPT\">CPT</option>";
}else if(value == "CA/CS/ICWA")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"Chartered Accountant\" >Chartered Accountant</option><option  value=\"CS\" >CS</option><option  value=\"ICWA\" >ICWA</option>";
}else if(value == "Nursery School")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"All Subjects\" >All Subjects</option><option  value=\"Art & Creativity\" >Art & Creativity</option><option  value=\"Drawing\" >Drawing</option><option  value=\"English\" >English</option><option  value=\"Handwriting\" >Handwriting</option><option  value=\"Hindi\" >Hindi</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Music\" >Music</option><option  value=\"Spoken English\" >Spoken English</option><option value=\"Sports\" >Sports</option>";
}else if(value == "Class I-V")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"All Subjects\" >All Subjects</option><option  value=\"Art & Creativity\" >Art & Creativity</option><option  value=\"Belly Dance\" >Belly Dance</option><option  value=\"Danish\" >Danish</option><option  value=\"Drawing\" >Drawing</option><option  value=\"English\" >English</option><option  value=\"French\" >French</option><option  value=\"German\" >German</option><option  value=\"Handwriting\" >Handwriting</option><option  value=\"Hindi\" >Hindi</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Music\" >Music</option><option  value=\"Physics\" >Physics</option><option  value=\"Sanskrit\" >Sanskrit</option><option  value=\"Science\" >Science</option><option  value=\"Social Studies\" >Social Studies</option><option  value=\"Spanish\" >Spanish</option><option  value=\"Spoken English\" >Spoken English</option><option  value=\"Sports\" >Sports</option>";
}
else if(value == "Class I"||value == "Class II"||value == "Class III"||value == "Class IV"||value == "Class V")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"All Subjects\" >All Subjects</option><option  value=\"English\" >English</option><option  value=\"Spoken English\" >Spoken English</option><option  value=\"Hindi\" >Hindi</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Sanskrit\" >Sanskrit</option><option  value=\"Science\" >Science</option><option  value=\"Social Studies\" >Social Studies</option><option  value=\"Art & Creativity\" >Art & Creativity</option><option  value=\"Danish\" >Danish</option><option  value=\"Drawing\" >Drawing</option><option  value=\"French\" >French</option><option  value=\"German\" >German</option><option  value=\"Handwriting\" >Handwriting</option><option  value=\"Music\" >Music</option><option  value=\"Spanish\" >Spanish</option><option  value=\"Sports\" >Sports</option>";
}else if(value == "Class VI-VIII")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"All Subjects\" >All Subjects</option><option  value=\"Art & Creativity\" >Art & Creativity</option><option  value=\"Belly Dance\" >Belly Dance</option><option  value=\"Biology\" >Biology</option><option  value=\"Danish\" >Danish</option><option  value=\"Drawing\" >Drawing</option><option  value=\"English\" >English</option><option  value=\"French\" >French</option><option  value=\"German\" >German</option><option  value=\"Hindi\" >Hindi</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Music\" >Music</option><option  value=\"Sanskrit\" >Sanskrit</option><option  value=\"Science\" >Science</option><option  value=\"Social Studies\" >Social Studies</option><option  value=\"Spanish\" >Spanish</option><option  value=\"Spoken English\" >Spoken English</option><option  value=\"Sports\" >Sports</option>";
}else if(value == "Class VI"||value == "Class VII"||value == "Class VIII")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"All Subjects\" >All Subjects</option><option  value=\"English\" >English</option><option  value=\"Spoken English\" >Spoken English</option><option  value=\"Hindi\" >Hindi</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Science\" >Science</option><option  value=\"Social Studies\" >Social Studies</option><option  value=\"Sanskrit\" >Sanskrit</option><option  value=\"Biology\" >Biology</option><option  value=\"French\" >French</option><option  value=\"German\" >German</option><option  value=\"Music\" >Music</option><option  value=\"Art & Creativity\" >Art & Creativity</option><option  value=\"Belly Dance\" >Belly Dance</option><option  value=\"Danish\" >Danish</option><option  value=\"Drawing\" >Drawing</option><option  value=\"Spanish\" >Spanish</option><option  value=\"Sports\" >Sports</option>";
}else if(value == "Class IX-X")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"All Subjects\" >All Subjects</option><option  value=\"Belly Dance\" >Belly Dance</option><option  value=\"Biology\" >Biology</option><option  value=\"Business Studies\" >Business Studies</option><option  value=\"Chemistry\" >Chemistry</option><option  value=\"Chinese\" >Chinese</option><option  value=\"Civics\" >Civics</option><option  value=\"Drawing\" >Drawing</option><option  value=\"Economics\" >Economics</option><option  value=\"English\" >English</option><option  value=\"Environmental Studies\" >Environmental Studies</option><option  value=\"French\" >French</option><option  value=\"General Knowledge\" >General Knowledge</option><option  value=\"General Science\" >General Science</option><option  value=\"German\" >German</option><option  value=\"Hindi\" >Hindi</option><option  value=\"Japanese\" >Japanese</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Physics\" >Physics</option><option  value=\"Psychology\" >Psychology</option><option  value=\"Sanskrit\" >Sanskrit</option><option  value=\"Science\" >Science</option><option  value=\"Social Science\" >Social Science</option>";
}else if(value == "Class IX"||value == "Class X")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"All Subjects\" >All Subjects</option><option  value=\"English\" >English</option><option  value=\"Spoken English\" >Spoken English</option><option  value=\"Hindi\" >Hindi</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Science\" >Science</option><option  value=\"Social Studies\" >Social Studies</option><option  value=\"Sanskrit\" >Sanskrit</option><option  value=\"Biology\" >Biology</option><option  value=\"French\" >French</option><option  value=\"German\" >German</option><option  value=\"Music\" >Music</option><option  value=\"Art & Creativity\" >Art & Creativity</option><option  value=\"Belly Dance\" >Belly Dance</option><option  value=\"Danish\" >Danish</option><option  value=\"Drawing\" >Drawing</option><option  value=\"Spanish\" >Spanish</option><option  value=\"Sports\" >Sports</option>";
}else if(value == "Class XI-XII")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"Accounts\" >Accounts</option><option  value=\"Asp.Net\" >Asp.Net</option><option  value=\"Biology\" >Biology</option><option  value=\"Biotechnology\" >Biotechnology</option><option  value=\"Botany\" >Botany</option><option  value=\"Business Mathematics\" >Business Mathematics</option><option  value=\"Business Studies\" >Business Studies</option><option  value=\"C++ Language\" >C++ Language</option><option  value=\"Chemistry\" >Chemistry</option><option  value=\"Chinese\" >Chinese</option><option  value=\"Civics\" >Civics</option><option  value=\"Commerce\" >Commerce</option><option  value=\"Computer Science\" >Computer Science</option><option  value=\"Cost Accounting\" >Cost Accounting</option><option  value=\"Drawing\" >Drawing</option><option  value=\"Economics\" >Economics</option><option  value=\"English\" >English</option><option  value=\"Food & Nutrition\" >Food & Nutrition</option><option  value=\"French\" >French</option><option  value=\"Geography\" >Geography</option><option  value=\"Geology\" >Geology</option><option  value=\"German\" >German</option><option  value=\"Grammar/literature/conversation\" >Grammar/literature/conversation</option><option  value=\"Hindi\" >Hindi</option><option  value=\"History\" >History</option><option  value=\"Home Science\" >Home Science</option><option  value=\"Information Practice\" >Information Practice</option><option  value=\"Java Language\" >Java Language</option><option  value=\"Language\" >Language</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Multimedia & Web Designing\" >Multimedia & Web Designing</option><option  value=\"Music\" >Music</option><option  value=\"Philosophy\" >Philosophy</option><option  value=\"Physics\" >Physics</option><option  value=\"Political Science\" >Political Science</option><option  value=\"Programming\" >Programming</option><option  value=\"Psychology\" >Psychology</option><option  value=\"Sanskrit\" >Sanskrit</option><option  value=\"Sociology\" >Sociology</option><option  value=\"Spanish\" >Spanish</option><option  value=\"Spoken English\" >Spoken English</option><option  value=\"Statistics\" >Statistics</option><option  value=\"Swimming\" >Swimming</option>";
}else if(value == "Class XI"||value == "Class XII")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"English\" >English</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Physics\" >Physics</option><option  value=\"Chemistry\" >Chemistry</option><option  value=\"Biology\" >Biology</option><option  value=\"Computer Science\" >Computer Science</option><option  value=\"Accounts\" >Accounts</option><option  value=\"Business Studies\" >Business Studies</option><option  value=\"Economics\" >Economics</option><option  value=\"Information Practices\" >Information Practices</option><option  value=\"Geography\" >Geography</option><option  value=\"History\" >History</option><option  value=\"Pol Science\" >Pol Science</option><option  value=\"Hindi\" >Hindi</option><option  value=\"Psychology\" >Psychology</option><option  value=\"Sanskrit\" >Sanskrit</option><option  value=\"Physical Education\" >Physical Education</option><option  value=\"Art & Creativity\" >Art & Creativity</option>";
}else if(value == "Computer/IT")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"\">Select Subject</option><option  value=\"Android\" >Android</option><option  value=\"Animation\" >Animation</option><option  value=\"Asp.Net\" >Asp.Net</option><option  value=\"Auto Cad\" >Auto Cad</option><option  value=\"Basic Computers\" >Basic Computers</option><option  value=\"C Language\" >C Language</option><option  value=\"C Sharp\" >C Sharp</option><option  value=\"C++ Language\" >C++ Language</option><option  value=\"Cisco\" >Cisco</option><option  value=\"Computer Graphics\" >Computer Graphics</option><option  value=\"Computer Hardware\" >Computer Hardware</option><option  value=\"Computer Networking\" >Computer Networking</option><option  value=\"Core Java\" >Core Java</option><option  value=\"Data Base Management System\" >Data Base Management System</option><option  value=\"Java Hibernate\" >Java Hibernate</option><option  value=\"Java Language\" >Java Language</option><option  value=\"Javabeans\" >Javabeans</option><option  value=\"Linux\" >Linux</option><option  value=\"MS Excel\" >MS Excel</option><option  value=\"Operating System\" >Operating System</option><option  value=\"Operation Research\" >Operation Research</option><option  value=\"Oracle\" >Oracle</option><option  value=\"Software Testing\" >Software Testing</option><option  value=\"Tally\" >Tally</option><option  value=\"UNIX\" >UNIX</option><option  value=\"Visual Basic\" >Visual Basic</option><option  value=\"Web Designing\" >Web Designing</option><option  value=\"XML\" >XML</option>";
}else if(value == "Computer Science Engineering")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Applied Chemistry\" >Applied Chemistry</option><option value=\"Applied Mathematics\" >Applied Mathematics</option><option value=\"Applied Physics\" >Applied Physics</option><option value=\"Circuit Theory & Networks\" >Circuit Theory & Networks</option><option value=\"Computer Graphics\" >Computer Graphics</option><option value=\"Computer Organisation\" >Computer Organisation</option><option value=\"Control System\" >Control System</option><option value=\"Data Structure\" >Data Structure</option><option value=\"Discrete Mathematics\" >Discrete Mathematics</option><option value=\"Electrical Technology\" >Electrical Technology</option><option value=\"English\" >English</option><option value=\"Financial Management\" >Financial Management</option><option value=\"Industrial Management\" >Industrial Management</option><option value=\"Language Processor\" >Language Processor</option><option value=\"Microprocessor\" >Microprocessor</option><option value=\"Object Technology\" >Object Technology</option><option value=\"Personality Development\" >Personality Development</option><option value=\"Programming\" >Programming</option><option value=\"Web Technology\" >Web Technology</option><option value=\"Workshop\" >Workshop</option>";
}else if(value == "Computer Science Engineering")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Applied Chemistry\" >Applied Chemistry</option><option value=\"Applied Mathematics\" >Applied Mathematics</option><option value=\"Applied Physics\" >Applied Physics</option><option value=\"Circuit Theory & Networks\" >Circuit Theory & Networks</option><option value=\"Computer Graphics\" >Computer Graphics</option><option value=\"Computer Organisation\" >Computer Organisation</option><option value=\"Control System\" >Control System</option><option value=\"Data Structure\" >Data Structure</option><option value=\"Discrete Mathematics\" >Discrete Mathematics</option><option value=\"Electrical Technology\" >Electrical Technology</option><option value=\"English\" >English</option><option value=\"Financial Management\" >Financial Management</option><option value=\"Industrial Management\" >Industrial Management</option><option value=\"Language Processor\" >Language Processor</option><option value=\"Microprocessor\" >Microprocessor</option><option value=\"Object Technology\" >Object Technology</option><option value=\"Personality Development\" >Personality Development</option><option value=\"Programming\" >Programming</option><option value=\"Web Technology\" >Web Technology</option><option value=\"Workshop\" >Workshop</option>";
}else if(value == "Competitive Exams")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"AIEEE\" >AIEEE</option><option  value=\"AIPMT\" >AIPMT</option><option  value=\"Animation\" >Animation</option><option  value=\"B.L.Ed\" >B.L.Ed</option><option  value=\"Bank Clerical Exam\" >Bank Clerical Exam</option><option  value=\"Bank PO\" >Bank PO</option><option  value=\"Chartered Accountant\" >Chartered Accountant</option><option  value=\"Chemistry\" >Chemistry</option><option  value=\"Combined Defence Services\" >Combined Defence Services</option><option  value=\"Common Apptitute Test - CAT\" >Common Apptitute Test - CAT</option><option  value=\"Common Entrance Test - CET\" >Common Entrance Test - CET</option><option  value=\"Computer Science\" >Computer Science</option><option  value=\"Engineering Entrance Exam\" >Engineering Entrance Exam</option><option  value=\"English\" >English</option><option  value=\"Foreign Education Exam\" >Foreign Education Exam</option><option  value=\"GATE\" >GATE</option><option  value=\"GMAT\" >GMAT</option><option  value=\"GRE\" >GRE</option><option  value=\"Hindi\" >Hindi</option><option  value=\"IAS\" >IAS</option><option  value=\"IIT\" >IIT</option><option  value=\"IIT JEE\" >IIT JEE</option><option  value=\"Indian Forest Service\" >Indian Forest Service</option><option  value=\"JEE\" >JEE</option><option  value=\"Judicial Entrance Exam\" >Judicial Entrance Exam</option><option  value=\"Law Entrance Exam\" >Law Entrance Exam</option><option  value=\"LIC\" >LIC</option><option  value=\"MAT\" >MAT</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"MBA\" >MBA</option><option  value=\"Medical Entrance Exam\" >Medical Entrance Exam</option><option  value=\"National Defence Academy\" >National Defence Academy</option><option  value=\"NET\" >NET</option><option  value=\"NTSE Exam\" >NTSE Exam</option><option  value=\"Physics\" >Physics</option><option  value=\"Railway\" >Railway</option><option  value=\"SAT\" >SAT</option><option  value=\"SSB Exam\" >SSB Exam</option><option  value=\"SSC\" >SSC</option><option  value=\"TOEFL\" >TOEFL</option><option  value=\"UPSC Exam\" >UPSC Exam</option>";
}else if(value == "IIT-JEE")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"Chemistry\" >Chemistry</option><option  value=\"English\" >English</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Physics\" >Physics</option>";
}else if(value == "Engineering Subjects")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"Basic Electrical Technology\" >Basic Electrical Technology</option><option  value=\"Basic Thermodynamics\" >Basic Thermodynamics</option><option  value=\"Compiler Design\" >Compiler Design</option><option  value=\"Engineering Chemistry\" >Engineering Chemistry</option><option  value=\"Engineering Mechanic\" >Engineering Mechanic</option><option  value=\"Engineering Physics\" >Engineering Physics</option><option  value=\"Environment And Ecology\" >Environment And Ecology</option><option  value=\"Mathematics\" >Mathematics</option><option  value=\"Waves\" >Waves</option>";
}else if(value == "GRE/GMAT/TOEFL/IELTS")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"GMAT\" >GMAT</option><option  value=\"GRE\" >GRE</option><option  value=\"IELTS\" >IELTS</option><option  value=\"TOEFL\" >TOEFL</option>";
}else if(value == "Hobby/Creativity")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option  value=\"Belly Dance\" >Belly Dance</option><option  value=\"Clay Modelling\" >Clay Modelling</option><option  value=\"Cooking\" >Cooking</option><option  value=\"Designing\" >Designing</option><option  value=\"Drawing\" >Drawing</option><option  value=\"Driving\" >Driving</option><option  value=\"Fine Arts\" >Fine Arts</option><option  value=\"Handwriting\" >Handwriting</option><option  value=\"Harmonium\" >Harmonium</option><option  value=\"Music\" >Music</option><option  value=\"Painting\" >Painting</option><option  value=\"Photography\" >Photography</option><option  value=\"Playing Guitar\" >Playing Guitar</option><option  value=\"Reading\" >Reading</option><option  value=\"Sports\" >Sports</option><option  value=\"Swimming\" >Swimming</option><option  value=\"Tailoring\" >Tailoring</option><option  value=\"Writing\" >Writing</option><option  value=\"Yoga\" >Yoga</option>";
}else if(value == "Language")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Arabic\" >Arabic</option><option value=\"Bengali\" >Bengali</option><option value=\"Business English\" >Business English</option> <option value=\"Chinese\" >Chinese</option> <option value=\"Danish\" >Danish</option> <option value=\"Dutch\" >Dutch</option> <option value=\"English\" >English</option> <option value=\"French\" >French</option> <option value=\"German\" >German</option> <option value=\"Hindi\" >Hindi</option> <option value=\"Italian\" >Italian</option> <option value=\"Japanese\" >Japanese</option> <option value=\"Japanese\" >Japanese</option> <option value=\"Kannada Speaking\" >Kannada Speaking</option> <option value=\"Korean\" >Korean</option> <option value=\"Language\" >Language</option> <option value=\"Malyalam\" >Malyalam</option> <option value=\"Marathi\" >Marathi</option> <option value=\"Persian\" >Persian</option> <option value=\"Portuguese\" >Portuguese</option> <option value=\"Punjabi Language\" >Punjabi Language</option> <option value=\"Russian\" >Russian</option> <option value=\"Sanskrit\" >Sanskrit</option> <option value=\"Spanish\" >Spanish</option> <option value=\"Swedish\" >Swedish</option> <option value=\"Tamil Speaking Classes\" >Tamil Speaking Classes</option> <option value=\"Telugu Speaking Classes\" >Telugu Speaking Classes</option> <option value=\"Thai Speaking Classes\" >Thai Speaking Classes</option> <option value=\"Urdu\" >Urdu</option>";
}else if(value == "Laws/Judiciary")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Company Law\" > Company Law</option> <option value=\"Contract\" > Contract</option> <option value=\"Family Law\" > Family Law</option> <option value=\"Administrative Law\" >Administrative Law</option> <option value=\"Arbitration, Conciliation And Alternate Dispute\" >Arbitration, Conciliation And Alternate Dispute</option> <option value=\"Civil Procedure & Limitation - CPC\" >Civil Procedure & Limitation - CPC</option> <option value=\"Company Law\" >Company Law</option> <option value=\"Constitutional Law Of India\" >Constitutional Law Of India</option> <option value=\"Consumer Protection Laws\" >Consumer Protection Laws</option> <option value=\"CR.P.C.criminal Procedure, Juvenile Justice\" >CR.P.C.criminal Procedure, Juvenile Justice</option> <option value=\"Criminology & Penology\" >Criminology & Penology</option> <option value=\"Environmental Law\" >Environmental Law</option> <option value=\"Family Law\" >Family Law</option> <option value=\"Interpretation Of Statutes\" >Interpretation Of Statutes</option> <option value=\"IPC - Law Of Crimes\" >IPC - Law Of Crimes</option> <option value=\"Jurisprudence\" >Jurisprudence</option> <option value=\"Labour Law\" >Labour Law</option> <option value=\"Land Laws - Including Revenue Ceiling Laws\" >Land Laws - Including Revenue Ceiling Laws</option> <option value=\"Law\" >Law</option> <option value=\"Law Of Evidence\" >Law Of Evidence</option> <option value=\"Legal History\" >Legal History</option> <option value=\"Legal Language & Legal Writing\" >Legal Language & Legal Writing</option> <option value=\"Moot Court Pre-trail Preparations & Participation\" >Moot Court Pre-trail Preparations & Participation</option> <option value=\"PIL - Public Interest Lawyering, Legal Aid\" >PIL - Public Interest Lawyering, Legal Aid</option> <option value=\"Professional Ethics\" >Professional Ethics</option> <option value=\"Property Law & Easement\" >Property Law & Easement</option> <option value=\"Public International Law & Human Rights\" >Public International Law & Human Rights</option> <option value=\"Women & Law And Law Relating To Child\" >Women & Law And Law Relating To Child</option>";
}else if(value == "M.TECH")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Advanced Database Management Systems\" >Advanced Database Management Systems</option> <option value=\"Advanced Software Engineering\" >Advanced Software Engineering</option> <option value=\"Algorithms And Algorithmic Complexity\" >Algorithms And Algorithmic Complexity</option> <option value=\"Bioinformatics\" >Bioinformatics</option> <option value=\"Cluster And Grid Computing\" >Cluster And Grid Computing</option> <option value=\"Cryptography And Network Security\" >Cryptography And Network Security</option> <option value=\"Distributed Systems\" >Distributed Systems</option> <option value=\"Embedded Systems\" >Embedded Systems</option> <option value=\"Image Processing\" >Image Processing</option> <option value=\"Mobile And Wireless Computing\" >Mobile And Wireless Computing</option> <option value=\"Multimedia System\" >Multimedia System</option> <option value=\"Natural Language Processing\" >Natural Language Processing</option> <option value=\"Real-time Systems\" >Real-time Systems</option> <option value=\"Soft Computing\" >Soft Computing</option> <option value=\"VLSI Design\" >VLSI Design</option>";
}else if(value == "Medical Enterance")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Biology\" >Biology</option> <option value=\"Chemistry\" >Chemistry</option> <option value=\"Physics\" >Physics</option>";
}else if(value == "MBA / BBA")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Accommodation Management\" >Accommodation Management</option> <option value=\"Accounting For Management\" >Accounting For Management</option> <option value=\"Applied Operations Research\" >Applied Operations Research</option> <option value=\"Basic Accounting\" >Basic Accounting</option> <option value=\"Basic Business Communication\" >Basic Business Communication</option> <option value=\"Basic Business Statistics\" >Basic Business Statistics</option> <option value=\"Business Environment\" >Business Environment</option> <option value=\"Business Laws\" >Business Laws</option> <option value=\"Business Mathematics\" >Business Mathematics</option> <option value=\"Communication & Soft Skills\" >Communication & Soft Skills</option> <option value=\"Corporate Legal Environment\" >Corporate Legal Environment</option> <option value=\"Corporate Strategy\" >Corporate Strategy</option> <option value=\"Cost Accounting\" >Cost Accounting</option> <option value=\"Database System\" >Database System</option> <option value=\"Entrepreneurship\" >Entrepreneurship</option> <option value=\"Financial Management\" >Financial Management</option> <option value=\"Food & Beverage Management\" >Food & Beverage Management</option> <option value=\"Food Science, Nutrition & Dietetics Management\" >Food Science, Nutrition & Dietetics Management</option> <option value=\"Human Resource Management\" >Human Resource Management</option> <option value=\"Information Technology In Management\" >Information Technology In Management</option> <option value=\"Introduction To Computers\" >Introduction To Computers</option> <option value=\"Legal Environment Of Indian Business\" >Legal Environment Of Indian Business</option> <option value=\"Logistics Managements\" >Logistics Managements</option> <option value=\"Macro Economics\" >Macro Economics</option> <option value=\"Management Information System\" >Management Information System</option> <option value=\"Managerial Economics\" >Managerial Economics</option> <option value=\"Marketing Management\" >Marketing Management</option> <option value=\"Micro Economics\" >Micro Economics</option> <option value=\"Operation Research\" >Operation Research</option> <option value=\"Organizational Behavior\" >Organizational Behavior</option> <option value=\"Principles & Practices Of Management\" >Principles & Practices Of Management</option> <option value=\"Production And Operation Management\" >Production And Operation Management</option> <option value=\"Production And Operation Management\" >Production And Operation Management</option> <option value=\"Project Management\" >Project Management</option> <option value=\"Quantitative Techniques\" >Quantitative Techniques</option> <option value=\"Research Methodology\" >Research Methodology</option> <option value=\"Specialization Major\" >Specialization Major</option> <option value=\"Strategic Management\" >Strategic Management</option>";
}else if(value == "Music")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Carnatic Music Classes\" >Carnatic Music Classes</option> <option value=\"Casio\" >Casio</option> <option value=\"Dholak\" >Dholak</option> <option value=\"Drum\" >Drum</option> <option value=\"Flute\" >Flute</option> <option value=\"Flute\" >Flute</option> <option value=\"Harmonium\" >Harmonium</option> <option value=\"Indian Instrumental Music\" >Indian Instrumental Music</option> <option value=\"Keyboard\" >Keyboard</option> <option value=\"Keyboard\" >Keyboard</option> <option value=\"Mouth Organ\" >Mouth Organ</option> <option value=\"Piano\" >Piano</option> <option value=\"Rhythm Pad\" >Rhythm Pad</option> <option value=\"Santoor\" >Santoor</option> <option value=\"Saxophone\" >Saxophone</option> <option value=\"Sitaar\" >Sitaar</option> <option value=\"Tabla\" >Tabla</option> <option value=\"Veena\" >Veena</option> <option value=\"Violin\" >Violin</option> <option value=\"Western Music Classes\" >Western Music Classes</option>  <option value=\"Carnatic Music Classes\" >Carnatic Music Classes</option> <option value=\"Casio\" >Casio</option> <option value=\"Dholak\" >Dholak</option> <option value=\"Drum\" >Drum</option> <option value=\"Flute\" >Flute</option> <option value=\"Flute\" >Flute</option> <option value=\"Harmonium\" >Harmonium</option> <option value=\"Indian Instrumental Music\" >Indian Instrumental Music</option> <option value=\"Keyboard\" >Keyboard</option> <option value=\"Keyboard\" >Keyboard</option> <option value=\"Mouth Organ\" >Mouth Organ</option> <option value=\"Piano\" >Piano</option> <option value=\"Rhythm Pad\" >Rhythm Pad</option> <option value=\"Santoor\" >Santoor</option> <option value=\"Saxophone\" >Saxophone</option> <option value=\"Sitaar\" >Sitaar</option> <option value=\"Tabla\" >Tabla</option> <option value=\"Veena\" >Veena</option> <option value=\"Violin\" >Violin</option> <option value=\"Western Music Classes\" >Western Music Classes</option>";
}else if(value == "Spoken English")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Business English\" >Business English</option> <option value=\"English\" >English</option> <option value=\"English Speaking Basics\" >English Speaking Basics</option> <option value=\"Regular English\" >Regular English</option> <option value=\"Spoken English\" >Spoken English</option>";
}else if(value == "Special Educators")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Autism\" >Autism</option> <option value=\"Blind Therapist\" >Blind Therapist</option> <option value=\"Disability / Dyslexia\" >Disability / Dyslexia</option> <option value=\"Dyscalculia\" >Dyscalculia</option> <option value=\"Hearing Impaired\" >Hearing Impaired</option> <option value=\"Mathematics Disability\" >Mathematics Disability</option> <option value=\"Mentally Retarded\" >Mentally Retarded</option> <option value=\"Reading Disability\" >Reading Disability</option> <option value=\"Speech Impaired Therapy\" >Speech Impaired Therapy</option> <option value=\"Speech Therapist\" >Speech Therapist</option> <option value=\"Writing Disability\" >Writing Disability</option>";
}else if(value == "Sports Class/Fitness/Yoga")
{
	document.getElementById(parseInt(id)+3).innerHTML = "<option  value=\"\">Select Subject</option><option value=\"Cricket\" >Cricket</option> <option value=\"Football\" >Football</option> <option value=\"Volley Ball\" >Volley Ball</option>";
}
}
//end populate subject based on course


$(document).ready(function(){
	 
	

			var value = $("[name='courses']");
        
	var clickcount = [];
for (var i=0;i<value.length;i++) {
  
  clickcount.push(0);
 
}	

 $.each(clickcount, function(i) {
      var checkboxid=value[i].id;
	  var btnid=$('#'+value[i].id).next().attr('id');
	  
	  $('#'+checkboxid).click(function(){
    	$('#'+btnid).click();
           });
	

	   $('#'+btnid).click(function(){
	
	clickcount[i]+=1;
	if(clickcount[i]%2==0)
		$('#'+checkboxid).prop('checked', false);
	else
	$('#'+checkboxid).prop('checked', true);
});	
	  
		
    });
	
	
	
		
		
		
		
});

function valid(){
	
	
}

function validate3(){
 
  var bcom = document.getElementById('bcom');
  var bed = document.getElementById('b-ed');
  var btech = document.getElementById('btech');
  var bca = document.getElementById('bca');
  var bms = document.getElementById('bms');
  var bbs = document.getElementById('bbs');
  var business = document.getElementById('business');
  var cat = document.getElementById('cat');
  var cpt = document.getElementById('cpt');
  var ca = document.getElementById('ca');
  var I = document.getElementById('I');
  var VI = document.getElementById('VI');
  var IX = document.getElementById('IX');
  var XI = document.getElementById('XI');
  var comp = document.getElementById('comp');
  var cse = document.getElementById('cse');
  var competitive = document.getElementById('competitive');
  var iit = document.getElementById('iit');
  var engg = document.getElementById('engg');
  var gre = document.getElementById('gre');
  var hobby = document.getElementById('hobby');
  var language = document.getElementById('language');
  var laws = document.getElementById('laws');
  var medical = document.getElementById('medical');
  var mtech = document.getElementById('mtech');
  var mba = document.getElementById('mba');
  var music = document.getElementById('music');
  var english = document.getElementById('english');
  var special = document.getElementById('special');
  var fitness = document.getElementById('fitness');
  
  
 
	 var courses = $("#courses input:checked").length > 0;
	  
	  if (!courses){
	      alert("Select at least one preffered Course that you teach.");
	      return false;
	  }
	 
  if (bcom.checked){
	    var checked = $("#bcombox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected B.COM/M.COM as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (bed.checked){
	    var checked = $("#bedbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected B.Ed as course.Please select at least one subject of it.");
	        return false;
	    }
	  } 
  if (btech.checked){
	    var checked = $("#btechbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected B.Tech as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (bca.checked){
	    var checked = $("#bcabox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected BCA/MCA as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (bms.checked){
	    var checked = $("#bmsbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected BMS as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (bbs.checked){
	    var checked = $("#bbsbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected BBS as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (business.checked){
	    var checked = $("#businessbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected Business as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (cat.checked){
	    var checked = $("#catbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected CAT as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (cpt.checked){
	    var checked = $("#cptbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected CPT as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (ca.checked){
	    var checked = $("#cabox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected CA as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (I.checked){
	    var checked = $("#Ibox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected I-V as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (VI.checked){
	    var checked = $("#VIbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected VI-VIII as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (IX.checked){
	    var checked = $("#IXbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected IX-X as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (XI.checked){
	    var checked = $("#XIbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected XI-XII as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (comp.checked){
	    var checked = $("#compbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected COMPUTER as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (cse.checked){
	    var checked = $("#csebox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected Computer Engineering as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (competitive.checked){
	    var checked = $("#competitivebox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected competitive as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (iit.checked){
	    var checked = $("#iitbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected IIT-JEE as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (engg.checked){
	    var checked = $("#enggbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected Engineering as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (gre.checked){
	    var checked = $("#grebox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected GRE/GMAT/TOFEL as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (hobby.checked){
	    var checked = $("#hobbybox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected Hobby as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (language.checked){
	    var checked = $("#languagebox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected Language as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (laws.checked){
	    var checked = $("#lawsbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected Laws as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (medical.checked){
	    var checked = $("#medicalbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected Medical as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (mtech.checked){
	    var checked = $("#mtechbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected M.Tech as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  
  if (mba.checked){
	    var checked = $("#mbabox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected BBA/MBA as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (music.checked){
	    var checked = $("#musicbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected Music as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
  if (english.checked){
	    var checked = $("#englishbox input:checked").length > 0;
	    if (!checked){
	        alert("You have selected English as course.Please select at least one subject of it.");
	        return false;
	    }
	  }
	   
  
  
   
}

