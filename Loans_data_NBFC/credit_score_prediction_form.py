import ipywidgets as widgets
from IPython.display import display, clear_output
import pandas as pd


def get_credit_score_prediction(model, feature_columns):
    """
    Displays a credit risk input form in Jupyter Notebook.
    model → trained sklearn LogisticRegression model
    feature_columns → X.columns used during training
    """

    # --- Input Fields ---
    count_loans = widgets.IntText(description="Loans:")
    late_payments = widgets.IntText(description="Late Pays:")
    loan_enquiries = widgets.IntText(description="Enquiries:")
    loan_balance = widgets.FloatText(description="Balance:")
    credit_history = widgets.IntText(description="History (yrs):")

    predict_button = widgets.Button(description="Predict", button_style="success")
    output = widgets.Output()

    # --- Prediction Logic ---
    def predict_clicked(b):
        with output:
            clear_output()

            input_df = pd.DataFrame([[
                count_loans.value,
                late_payments.value,
                loan_enquiries.value,
                loan_balance.value,
                credit_history.value
            ]], columns=feature_columns)

            pd_default = model.predict_proba(input_df)[0][1]

            # Simple score scaling
            score = int(900 - (pd_default * 600))

            label = "Defaulter" if pd_default >= 0.5 else "Non-Defaulter"

            print("\n" + "="*45)
            print("        CREDIT RISK PREDICTION RESULT")
            print("="*45)
            print(f"Probability of Default (PD) : {pd_default:.2%}")
            print(f"Credit Score (300–900)      : {score}")
            print(f"Model Classification        : {label}")
            print("="*45)

    predict_button.on_click(predict_clicked)

    display(count_loans,
            late_payments,
            loan_enquiries,
            loan_balance,
            credit_history,
            predict_button,
            output)
