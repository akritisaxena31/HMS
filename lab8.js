angular.module("Packages",[]) //This is a module named as packages as under this module only everything will work and its also a view from MVC(model view controller)
.filter("namefilter",function()
{
    return function(input,option)
    {
        if(isNaN(option) ||(option == ""))
        {
            return input;
        }
        else
        {
        return input.substring(0,option).toUpperCase();
    }}
})
.controller("Packagesctrl",function($scope) //This works as a controller
{
    var transport = [
        {type:'Private Cab',doa:new Date("January 31 2022"),dlocation:"Bangalore Dist Hospital",atime:"5 am",price:2000},
        {type:'Ambulance',doa:new Date("February 12 2022"),dlocation:"Christ private Hospital",atime:"4 pm",price:1500},
        {type:'Ambulance',doa:new Date("February 21 2022"),dlocation:"Bangalore Dist Hospital",atime:"12 pm",price:1800},
        {type:'Private Ca',doa:new Date("March 10 2022"),dlocation:"Christ Medical Lab",atime:"3 pm",price:1200},
        {type:'Staff Van',doa:new Date("January 12 2022"),dlocation:"Christ Hospital",atime:"6 am",price:2500},
        {type:'Staff Van',doa:new Date("April 1 2022"),dlocation:"Kalyan Nagar Hospital",atime:"10 am",price:1600},
        {type:'Ambulance',doa:new Date("April 2 2022"),dlocation:"Bangalore Dist Hospital",atime:"7 pm",price:5000}
    ];
    $scope.transport = transport;
    $scope.rowlimit = 7;
});