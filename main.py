import os
import tkinter as tk

# Configurar la variable de entorno DISPLAY para conectarse con X Server
os.environ["DISPLAY"] = ":0"

# Crear una ventana gráfica utilizando tkinter
root = tk.Tk()
root.title("Ventana gráfica")
root.geometry("400x300")

# Mostrar la ventana gráfica
root.mainloop()