
# Fonctions d'une variable réelle

Une *fonction d'une variable réelle* est une boite noire qui associe à un
nombre réel un autre nombre réel. La fonction peut être définie sur
$\mathbb{R}$ tout entier ou sur une partie de $\mathbb{R}$

Par exemple:

- la fonction exponentielle:
  $\mathbb{R} \to \mathbb{R}, x \mapsto e^x$

- la fonction racine carrée:
  $[0, +\infty[ \to \mathbb{R}, x \mapsto \sqrt{x}$

- la fonction logarithme:
  $]0, +\infty[ \to \mathbb{R}, x \mapsto \ln{x}$

```tikz
  \begin{axis}[
      axis lines = center,
      xlabel = $x$,
      ylabel = {$y$},
      scale=0.8,
      ymin=-5.5,
      ymax=5.5,
      width=10cm,
      height=10cm,
    ]
    \addplot [
      domain=0:6,
      smooth,
      samples=500,
      color=blue,
    ]
    {sqrt{\x}} node(sqrt){};
    \node [above left, color=blue] at (sqrt) {$y=\sqrt{x}$};
    \addplot [
      domain=0.001:6,
      smooth,
      samples=500,
      color=green,
    ]
            {ln{\x}} node(log){};
    \node [below left, color=green] at (log) {$y=\ln(x)$};
    \addplot [
      domain=-3:1.7,
      smooth,
      samples=500,
      color=red,
    ]
             {exp{\x}} node(exp){};
    \node [below right, color=red] at (exp) {$y=e^x$};

  \end{axis}
```

# Fonctions d'une variable complexe

On ne tratera probablement pas cette partie en détail.
