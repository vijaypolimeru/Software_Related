# Worksheet 2

**Note:** Throughout this worksheet, $V$ denotes a finite dimensional inner product space of dimension $n$

## Question - 1

!!! Question - "Question"
	Let $T \in L(V, V)$ and let $u, v \in V$. Show that
	
	1. $A(u \otimes v) = A u \otimes v$
	
	2. $(u \otimes v)A = u \otimes A^Tv$
	
??? Answer - "Solution"
	
## Question - 2

!!! Question - "Question"
	Define the second order tensor $I \in \mathcal{T}^2(V)$ as follows: for any $u, v \in V$
	
	$$I(u, v) = u \cdot v$$
	
	What are the components of $I$ with respect to a general basis and an orthonormal basis of $V$?
	
??? Answer - "Solution"

## Question - 3

!!! Question - "Question"
	Given $S, T \in \mathcal{T}^2(V)$, compute $\mathcal{C}_{2,3}(S \otimes T)$ with respect to both a general and an orthonormal basis of $V$
	
??? Answer - "Solution"

## Question - 4

!!! Question - "Question"
	Given $T \in L(V, V)$, let $\hat{T} \in \mathcal{T}^2(V)$ be the corresponding bilinear map. Recall that this means the following: for any $u, v \in V$, $u \cdot Tv = \hat{T}(u, v)$. Show that for any $v \in V$, $Tv = \mathcal{C}_{2,3}(\hat{T} \otimes v)$.
	
??? Answer - "Solution"

## Question - 5

!!! Question - "Question"
	Let $\epsilon \ = \sum \epsilon_{ijk} e_i \otimes e_j \otimes e_k$ denote the standard volume form on $\mathbb{R}^3$, and let $(g_1, g_2, g_3)$ be a general basis of $\mathbb{R}^3$, if
	
	$$\epsilon \ = \sum \epsilon_{ijk} g_i \otimes g_j \otimes g_k = \sum \epsilon_{ijk}^{*} g^i \otimes g^j \otimes g^k$$
	
	Show that
	
	$$e_{ijk} = \frac{1}{\sqrt{\mathrm{det}(g)}}\epsilon_{ijk}, \space \space \epsilon_{ijk}^{*} = \sqrt{\mathrm{det}(g)}\space \epsilon_{ijk}$$
	
	Where $\mathrm{det}(g)$ is the determinant of the matrix whose $(i, j)^{th}$ element $g_{ij}$
	
??? Answer - "Solution"

## Question - 6

!!! Question - "Question"
	Show that the Levi-Civita symbols $\epsilon_{ijk}$ and the Krönecker delata $\delta_{ij}$ satisfy the following identities:
	
	1. $\epsilon_{ijk}\epsilon_{lmn} = \mathrm{det} \begin{bmatrix} \delta_{ij} & \delta_{im} & \delta_{in} \\ \delta_{jl} & \delta_{jm} & \delta_{jn} \\ \delta_{kl} & \delta_{km} & \delta_{kn} \end{bmatrix}$
	
	2. $\sum \epsilon_{ijk}\epsilon_{imn} = \mathrm{det} \begin{bmatrix} \delta_{jm} & \delta_{jn} \\ \delta_{km} & \delta_{kn} \end{bmatrix}$
	
	3. $\sum \epsilon_{ijk}\epsilon_{ijl} = 2 \delta_{kl}$
	
	4. $\sum \epsilon_{ijk}\epsilon_{ijk} = 6$
	
	(**Remark** - These relations are known as the $\epsilon - \delta$ *identities*)
	
??? Answer - "Solution"

## Question - 7

!!! Question - "Question"
	Given vectors $u, v, w \in \mathbb{R}^3$, show that $u \times (v \times w) = (u \cdot w)v - (u \cdot v)w$
	
??? Answer - "Solution"

## Question - 8

!!! Question - "Question"
	Given any $u, v \in V$ and $S, T \in L(V, V)$ and $a \in \mathbb{R}$, show that
	
	1. $\mathrm{det}(u \otimes v) = 0$
	
	2. $\mathrm{det}(aS + T) = a\mathrm{det}(S) + \mathrm{det}(T)$ $\color{red}{Is\space this \space eqn\space right??}$
	
	3. $\mathrm{det}(aT)$
	
??? Answer - "Solution"

## Question - 9

!!! Question - "Question"
	Given any $u, v \in V$ and $S, T \in L(V, V)$ and $a \in \mathbb{R}$, show that
	
	1. $\mathrm{tr}(u \otimes v) = u \cdot v$
	
	2. $\mathrm{tr}(aS + T) = a\mathrm{tr}(S) + \mathrm{tr}(T)$
	
	3. $\mathrm{tr}(ST) = \mathrm{tr}(TS)$
	
??? Answer - "Solution"

## Question - 10

!!! Question - "Question"
	Given any $T \in L(V, V)$, where $V$ is a three dimensional inner product space, show that $\mathrm{det}(T-aI) = (-a)^3 + I_1(-a)^2 + I_2(-a) + I_3$, where
	
	$$
	\begin{aligned} 
	I_1 &= \frac{\epsilon(Tu, v, w)}{\epsilon(u, v, w)} + \frac{\epsilon(u, Tv, w)}{\epsilon(u, v, w)} + \frac{\epsilon(u, v, Tw)}{\epsilon(u, v, w)} \\
	I_2 &= \frac{\epsilon(Tu, Tv, w)}{\epsilon(u, v, w)} + \frac{\epsilon(u, Tv, Tw)}{\epsilon(u, v, w)} + \frac{\epsilon(Tu, v, Tw)}{\epsilon(u, v, w)} \\
	I_3 &= \frac{\epsilon(Tu, Tv, Tw)}{\epsilon(u, v, w)}
	\end{aligned} 
	$$
	
	for any $u, v, w \in V$.
	
	(**Remark** - The scalars $I_i$ are called _invariants_ of $T$. This will be revisited later in the context of *eigen values* and *eigne vectors* of linear maps.)
	
??? Answer - "Solution"