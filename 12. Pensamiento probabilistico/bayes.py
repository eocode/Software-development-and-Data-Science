def calc_bayes(prior_A, prob_B_dado_A, prob_B):
    return (prior_A * prob_B_dado_A / prob_B)

if __name__ == "__main__":

    # Probabilidad de que tenga cancer dado un sintoma
    prob_cancer = 1 / 100000
    prob_sintoma_dado_cancer = 1

    # Probabilidad de que no tenga cancer dado un sintoma
    prob_sintoma_dado_no_cancer = 10 / 99999
    prob_no_cancer = 1 - prob_cancer


    # Suma de las probabilidades.
    prob_sintoma = (prob_sintoma_dado_cancer * prob_cancer) \
    + (prob_sintoma_dado_no_cancer * prob_no_cancer)

    prob_cancer_dado_sintoma = calc_bayes(prob_cancer, prob_sintoma_dado_cancer, prob_sintoma)

    print(prob_cancer_dado_sintoma)