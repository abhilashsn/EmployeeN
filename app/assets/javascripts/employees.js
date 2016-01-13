
function ValidateEmployee()
{
    var emp_name = $("#employee_name").val();
    var add_name = $("#employee_address").val();

    if(emp_name == "")
    {
      alert("Employee name cant blank");
        return false;
    }
    else if(add_name == "")
    {
      alert("address cant be blank");
    }

};

function 
