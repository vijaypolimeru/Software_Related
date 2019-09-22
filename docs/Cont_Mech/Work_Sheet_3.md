# Worksheet 3

## Question - 1

!!! Question - "Question"
	Suppose that $T:V \rightarrow V$ is a linear map. Show that $\mathit D_vT = T$ for every $v \in V$.
	
??? Answer - "Solution"
	
## Question - 2	
	
!!! Question - "Question"
	Consider the function $\phi:V \rightarrow \mathbb R$ where $\phi (v) = \lVert v\rVert^2$.
	
	1. Is $\phi$ linear
	2. Compute $\partial_v \phi(v)$
	
??? Answer - "Solution"
	
	*Part - 1*
	
	$\phi:V \rightarrow \mathbb R$ is not linear since,
	
	$$
	\begin{aligned} 
	\phi(\bar{u} + \bar{v}) &= \lVert \bar{u} + \bar{v}\rVert^2 \\
	&= \lVert \bar{u}\rVert^2 + \lVert \bar{v}\rVert^2 + 2 \bar{u} \cdot \bar{v} \\
	&\neq \phi(\bar{u}) + \phi(\bar{v}) \\
	\end{aligned} 
	$$
	
	*Part - 2*
	
	$$
	\begin{aligned} 
	\partial_\bar{v}\phi(\bar{v}) \cdot \bar{h} &= \frac{d}{dt} \bigg\rvert_{t = 0} \phi(\bar{v} + t \bar{h}), \mathrm{where} \space \bar{h} \in V \\
	&= \frac{d}{dt} \bigg\rvert_{t = 0} \lVert \bar{v} + t\bar{h}\rVert^2 \\
	&= \frac{d}{dt} \bigg\rvert_{t = 0} (\lVert \bar{v}\rVert^2 + t^2 \lVert \bar{h}\rVert^2 + 2t \bar{v} \cdot \bar{h}), \mathrm{differentiate \space and \space substitute} \space t = 0 \\
	&= 2\bar{v}.\bar{h} \\
	\partial_\bar{v}\phi(\bar{v}) &= 2 \bar{v}
	\end{aligned} 	
	$$
	
## Question - 3	
	
!!! Question - "Question"
	Consider the function $\psi:V \rightarrow \mathbb R$ defined as $\psi (v) = v\cdot Av$, where $A \in L(V, V)$. Show that $\partial_v \psi(v) = (A^T + A)v$
	
??? Answer - "Solution"

## Question - 4
	
!!! Question - "Question"
	Consider the function $\psi:L(V, V) \rightarrow \mathbb R$ defined as $\psi(A) = v \cdot Av$, for every $A \in L(V, V)$ and fixed $u, v \in V$. Show that $\partial_A \psi(A) = u \otimes v$
		
??? Answer - "Solution"
	
## Question - 5	
	
!!! Question - "Question"
	Recall that the trace and determinant of a linear map are functions that take a linear map $A \in L(V, V)$ and return the real numbers $tr(A)$ and $det(A)$, respectively. Show that
	
	1. $\partial_A \mathrm{tr}(A) = I$
	2. $\partial_A \mathrm{det}(A) = \mathrm{det}(A) A^{-T}$
	
??? Answer - "Solution"

## Question - 6
	
!!! Question - "Question"
	Define the function $\mathcal I : \mathrm {GL}(V) \rightarrow \mathrm {GL}(V)$ as $\mathcal I(A) = A^{-1}$ for every $A \in \mathrm {GL}(V)$. Show that for any $H \in L(V, V)$, $\partial_A \mathcal I(A) \cdot H = -A^{-1}HA^{-1}$
		
??? Answer - "Solution"

## Question - 7
	
!!! Question - "Question"
	For any $A \in L(V, V)$, show that $\partial_A\mathrm {tr}(A^k) = k(A^{k-1})^T$
		
??? Answer - "Solution"

## Question - 8
	
!!! Question - "Question"
	Let $A \in L(V, V)$ be a linear map on a three dimensional vector space $V$. Recall that we can associate with each $A \in L(V, V)$ the invariants $I_i(A), i = 1, 2, 3$. Show that
	
	1. $\partial_AI_1(A) = \pmb I$
	2. $\partial_AI_2(A) = I_1(A)\pmb I - A^T$
	3. $\partial_AI_3(A) = I_2(A)\pmb I - I_1(A)A^T + A^{2T}$
	
	(*Hint*. Use the fact that $A$ satisfies its own characteristic equation, according to the Cayley-Hamilton theorem)
		
??? Answer - "Solution"	
	
	