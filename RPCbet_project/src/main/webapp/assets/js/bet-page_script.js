


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
