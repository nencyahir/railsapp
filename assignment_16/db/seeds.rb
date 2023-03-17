
Photo.destroy_all

Photo.create!([{
    p_name: "fruit",
    p_type: "JPG"
},
{
    p_name: "apple" ,
    p_type: "PNG"
},
{
    p_name: "mango" ,
    p_type: "JPG"
},
{
    p_name: "orange" ,
    p_type: "PNG"
}])
