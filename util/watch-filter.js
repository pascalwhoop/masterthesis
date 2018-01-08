module.exports = function filter(file){
    var isFolder = file.indexOf(".") < 0;
    if (isFolder) return true;
    //has dot, is file
    else {
        var isTex = file.indexOf(".tex")>= 0;
        if(isTex)console.log(file);
        return isTex;
    }

};
