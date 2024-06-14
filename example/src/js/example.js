import { ElapsedRealtime } from 'elapsed-realtime';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    ElapsedRealtime.echo({ value: inputValue })
}
