
$(document).ready(function () {
    var valoriQuote = ""; // Variabile per memorizzare i valori delle quote

    $(".btn--bet").click(function () {
        var quota = $(this).attr("data-quota");

        if (valoriQuote.split(" ").length < 9) {
            // Rimuovi il valore dalla variabile valoriQuote se il pulsante è già stato premuto
            if ($(this).hasClass("btn--pressed")) {
                valoriQuote = valoriQuote.replace(quota + " ", "");
                $(this).removeClass("btn--pressed");
            } else {
                // Aggiungi il valore della quota alla variabile valoriQuote solo se non è già presente
                if (!valoriQuote.includes(quota)) {
                    valoriQuote += quota + " ";
                }
                $(this).addClass("btn--pressed");
            }

            // Imposta il valore aggiornato nel campo di testo
            $("#valoriQuote").val(valoriQuote.trim());

            // Calcola il prodotto dei valori delle quote
            var valoriArray = valoriQuote.trim().split(" ").map(function (valore) {
                return parseFloat(valore);
            });

            // Ottieni l'importo inserito dall'utente
            var importoGiocato = parseFloat($("[name='importogiocato']").val());

            // Verifica se l'importo inserito è un numero valido
            if (!isNaN(importoGiocato)) {
                // Calcola il risultato moltiplicando il prodotto per l'importo
                var risultato = importoGiocato * valoriArray.reduce(function (acc, valore) {
                    return acc * valore;
                }, 1);

                // Imposta il risultato della moltiplicazione nel campo di testo
                $("#vincita").val(risultato.toFixed(2));
            }
        }
    });

    // Aggiorna il campo vincita quando l'importo viene modificato
    $("[name='importogiocato']").on("input", function () {
        var importoGiocato = parseFloat($(this).val());
        if (!isNaN(importoGiocato) && valoriQuote.trim() !== "") {
            var valoriArray = valoriQuote.trim().split(" ").map(function (valore) {
                return parseFloat(valore);
            });

            var risultato = importoGiocato * valoriArray.reduce(function (acc, valore) {
                return acc * valore;
            }, 1);

            $("#vincita").val(risultato.toFixed(2));
        } else {
            $("#vincita").val("");
        }
    });
});




const eventiSelezionati = []; // Dichiarazione dell'array eventiSelezionati

function returnQuota(codicePartita, quota, colonna, button) {
    let index = eventiSelezionati.findIndex(function (item) {
        return item.startsWith(codicePartita);
    });

    if (index !== -1) {
        // Sostituisci il valore per lo stesso evento
        eventiSelezionati[index] = codicePartita + ' - ' + colonna;
    } else if (eventiSelezionati.length < 9) {
        // Aggiungi il nuovo valore se l'array non è pieno
        eventiSelezionati.push(codicePartita + ' - ' + colonna);
    }

    updateInputValues();
}

function updateInputValues() {
    for (let i = 0; i < eventiSelezionati.length; i++) {
        const inputCodice = document.getElementById('eventoCodiceInput' + (i + 1));
        const inputColonna = document.getElementById('eventoColonnaInput' + (i + 1));
        const eventiSelezionato = eventiSelezionati[i].split(' - ');

        inputCodice.value = eventiSelezionato[0];
        inputColonna.value = eventiSelezionato[1];
    }

    for (let i = eventiSelezionati.length; i < 9; i++) {
        const inputCodice = document.getElementById('eventoCodiceInput' + (i + 1));
        const inputColonna = document.getElementById('eventoColonnaInput' + (i + 1));

        inputCodice.value = '';
        inputColonna.value = '';
    }
}

// Aggiungi un event listener ai pulsanti di selezione
const section = document.querySelector(".header__sections");
section.addEventListener("click", function (event) {
    const selectedButton = event.target;
    const selectedTableName = selectedButton.textContent.toLowerCase();

    // Nascondi tutte le tabelle
    const tables = document.querySelectorAll(".tables > div");
    tables.forEach(function (table) {
        table.classList.remove("active");
    });

    // Mostra la tabella selezionata
    const selectedTable = document.querySelector(".tables__" + selectedTableName);
    selectedTable.classList.add("active");
});
