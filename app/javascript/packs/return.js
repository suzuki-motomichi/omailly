const MAX_LINE_NUM = 3;
const textarea = document.getElementById("post_name");

textarea.addEventListener('input', function() {
    let lines = textarea.value.split("\n");
    if (lines.length > MAX_LINE_NUM) {
    let result = "";
    for (let i = 0; i < MAX_LINE_NUM; i++) {
    result += lines[i] + "\n";
    }
    textarea.value = result;
    }
}, false);
