; Pertanyaan pembuka mengenai diagnosis jenis flu
(defrule Awalan
    =>
    (printout t crlf "Apakah Anda ingin mendiagnosis gejala flu?" crlf 
	"0: Tidak" crlf 
	"1: Ya" crlf)
    (bind ?x (read))
        (if (= ?x 1)
            then (assert (Awalan yes))
        )
        (if (= ?x 0)
            then (printout t crlf "Terima kasih telah menggunakan layanan kami" crlf)
        )
)

; Gejala umum Flu
(defrule gejalaUmum (Awalan yes)
    =>
    (printout t crlf "Berikut merupakan gejala umum saat terjangkit flu: " crlf 
	"- Batuk dan Pilek" crlf 
	"- Sakit Tenggorokan" crlf 
	"- Demam atau meriang" crlf 
	"- Pegal-pegal dan kelelahan" crlf
    "Apakah Anda mengalami gejala-gejala di atas?" crlf 
	"0: Tidak" crlf 
	"1: Ya" crlf)
	(bind ?x (read))
        (if (= ?x 1)
            then (assert (gejalaUmum yes))
        )
        (if (= ?x 0)
            then (printout t crlf "Berdasarkan diagnosis, Anda tidak mengalami flu. Tetap jaga kesehatan ya." crlf)
        )
)

; Gejala Flu Tipe A
(defrule tipeA (gejalaUmum yes)
    =>
    (printout t crlf "Berikut merupakan gejala flu Tipe A: " crlf 
	"- Sakit Kepala" crlf 
	"- Bersin-bersin" crlf 
	"Apakah Anda mengalami gejala di atas?" crlf 
	"0: Tidak" crlf 
	"1: Ya" crlf)
	(bind ?x (read))
        (if (= ?x 1)
			then (printout t crlf "Dari gejala yang Anda alami, sistem mendiagnosis bahwa Anda mengalami Flu Tipe A." crlf 
			"Perbanyak istirahat dan konsumsi obat sesusai resep" crlf 
			"Jika tidak kunjung membaik selama lebih dari seminggu, segera hubungi dokter." crlf)
        )
        (if (= ?x 0)
			then (assert (tipeA no))
        )
)

; Gejala Flu Tipe B
(defrule tipeB (tipeA no)
    =>
    (printout t crlf "Berikut merupakan gejala flu Tipe B: " crlf 
	"- Hilang nafsu makan" crlf 
	"- Mual dan muntah" crlf 
	"- Kram perut" crlf
    "Apakah Anda mengalami gejala di atas?" crlf 
	"0: Tidak" crlf 
	"1: Ya" crlf)
	(bind ?x (read))
        (if (= ?x 1)
			then (printout t crlf "Dari gejala yang Anda alami, sistem mendiagnosis bahwa Anda mengalami Flu Tipe B." crlf 
			"Perbanyak istirahat dan minum air putih, konsumsi obat, serta jaga jarak dengan orang lain" crlf 
			"Jika tidak kunjung membaik selama lebih dari seminggu, segera hubungi dokter." crlf)
        )
        (if (= ?x 0)
			then (assert (tipeB no))
        )
)

; Gejala Flu Burung
(defrule tipeFB (tipeB no)
    =>
    (printout t crlf "Berikut merupakan ciri-ciri penderita Flu Burung: " crlf 
	"- Sakit Kepala" crlf 
	"- Sesak Napas" crlf 
	"- Pernah berinteraksi dengan unggas" crlf 
	"Apakah Anda mengalaminya?" crlf 
	"0: Tidak" crlf 
	"1: Ya" crlf)
	(bind ?x (read))
        (if (= ?x 1)
			then (printout t crlf "Dari gejala yang Anda alami, sistem mendiagnosis bahwa Anda mengalami Flu Burung." crlf 
			"Harap segera mengunjungi dokter dan mendapatkan perawatan intensif." crlf)
        )
        (if (= ?x 0)
			then (assert (tipeFB no))
        )
)

; Gejala Flu Tulang
(defrule tipeTL (tipeFB no)
    =>
    (printout t crlf "Berikut merupakan gejala Flu Tulang: " crlf 
	"- Sendi membengkak dan terasa sakit" crlf 
	"- Muncul ruam di kulit" crlf 
	"- Otot terasa sakit" crlf
    "Apakah Anda mengalami gejala di atas?" crlf 
	"0: Tidak" crlf 
	"1: Ya" crlf)
	(bind ?x (read))
        (if (= ?x 1)
			then (printout t crlf "Dari gejala yang Anda alami, sistem mendiagnosis bahwa Anda mengalami Flu Tulang." crlf 
			"Perbanyak istirahat dan minum air putih, serta konsumsi obat penurun demam." crlf 
			"Jika tidak kunjung membaik, segera hubungi dokter." crlf)
        )
        (if (= ?x 0)
			then (assert (tipeTL no))
        )
)
