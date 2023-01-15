let points = [100,90,80,70,60,60];
let number = points.length;

function get_achievement(points){
    let sum = 0;
    for(let i=0; i<number; i+=1){
        sum = sum +points[i];
    }
    let average = sum/number;
    if(average>=80){
        return "A";
    }else if (average>=60){
        return "B";
    }else if (average>=40){
        return"C"
    }else{
        return "D"
    }
}

function get_pass_or_failure(points){
    let number = points.length;
    let judge = "合格"
    for(let i=0; i<number; i+=1){
        if (points[i]<60) {
        judge = "不合格";
        break;
    }
}   
return judge;
}

function judgement(points){
    let achievement = get_achievement(points);
    let pass_or_failure = get_pass_or_failure(points);
    return `あなたの成績は${achievement}です。${pass_or_failure}です。`
}
console.log(judgement(points))