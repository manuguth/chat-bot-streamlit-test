import streamlit as st

def main():

    # Title of the app
    st.title("Simple Chatbot")

    # Input text box for user
    user_input = st.text_input("You: ", "Type your message here...")

    # Dummy response
    response = "This is a dummy response."

    # Display the response
    if user_input:
        st.write(f"Bot: {response}")

if __name__ == "__main__":
    main()