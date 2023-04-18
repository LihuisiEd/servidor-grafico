import sys
from PyQt5.QtWidgets import QApplication, QWidget, QLabel

app = QApplication(sys.argv)

# Crear la ventana principal
window = QWidget()
window.setWindowTitle('Mi aplicación gráfica')
window.setGeometry(100, 100, 300, 200)

# Agregar un label a la ventana
label = QLabel('¡Hola, mundo!', window)
label.move(100, 80)

# Mostrar la ventana
window.show()

# Ejecutar la aplicación
sys.exit(app.exec_())