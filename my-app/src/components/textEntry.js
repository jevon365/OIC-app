import { useEffect,useState } from "react"
export default function TextEntry() {
    const [inputTxt, setInputTxt] = useState("")
    const [savedTxt, setSavedTxt] = useState("")
    const handleInputChange = (event) => {
        setInputTxt(event.target.value); // Update state with input text
      };
    const handleSaveClick = () => {
        setSavedTxt(inputTxt); // Save the current input text when the button is clicked
    };
    return (
        <>
        <input type="text" value={inputTxt} onChange={handleInputChange} />
        <button onClick={handleSaveClick}>Enter</button>
        <p>Saved Text: {savedTxt}</p>
        </>
    )
}