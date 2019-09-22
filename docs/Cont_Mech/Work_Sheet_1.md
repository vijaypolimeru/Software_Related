# Worksheet 1

## Question - 1

!!! Question - "Question"
	Consider the vectors $g_1 = (1, 2) \in \mathbb{R}^2$ and $g_2 = (2, 3) \in \mathbb{R}^2$
	
	1. Show that the ordered set $(g_1, g_2)$ is a basis of $\mathbb{R}^2$
	2. What is the reciprocal basis of $(g_1, g_2)$?
	3. Compute the representations of $v = (2, 5) \in \mathbb{R}^2$ with respect to both $(g_1, g_2)$ and $(g^1, g^2)$.
	4. Construct the orthonormal basis for $\mathbb{R}^2$ from $(g_1, g_2)$ using the Gram-Schmidt orthogonalization process.
	
??? Answer - "Solution"
	
## Question - 2	
	
!!! Question - "Question"
	Consider the projection map $\pi : \mathbb{R}^3 \rightarrow \mathbb{R}^2$ defined as follows: for any $(x_1, x_2, x_3) \in \mathbb{R}^3$, $\pi(x_1, x_2, x_3) = (x_1, x_2)$
	
	1. Verify that $\pi$ is a linear map.
	2. What is the kernel of $\pi$?
	3. What is the rank of $\pi$?
	4. Verify that the rank-nullity theorem is satisfied.
	5. What is the representation of $\pi$ w.r.to the standard bases of $\mathbb{R}^3$ and $\mathbb{R}^2$?
	6. Consider the basis $(g_1, g_2)$ of $\mathbb{R}^2$ obtained by rotating the standard basis $(e_1, e_2)$ anticlockwise by $45^0$. 
	   What is the representation of $\pi$ w.r.to the standard bases $(g_1, g_2, e_3)$ of $\mathbb{R}^3$ and $(g_1, g_2)$ of $\mathbb{R}^2$?
	7. Verify that the representations of $\pi$ derived earlier satisfy the change of basis rules for linear maps.
	
??? Answer - "Solution"
	
## Question - 3	
	
!!! Question - "Question"
	Consider the set $\mathcal{P}_n$ of all polynomials of degree less than of equal to $n$ on $[-1, 1] \subseteq \mathbb{R}$, defined as follows: 
	
	$$\mathcal{P}_n = \left\{\mathcal{p}: [-1, 1] \rightarrow \mathbb{R} \bigg \vert \forall x \in [-1, 1] \mathcal{p}(x) = \sum_{k = 0}^n a_k x^k \mathrm{where} \space a_0, a_1, ..., a_k \in \mathbb{R}\right\}$$
	
	Define two maps $+: \mathcal{P}_n \times \mathcal{P}_n \rightarrow \mathcal{P}_n$ and $\cdot : \mathbb{R} \times \mathcal{P}_n \rightarrow \mathcal{P}_n$ as follows: for any $x \in [-1, 1], a \in \mathbb{R}$ and $\mathcal{p, q} \in \mathcal{P}_n$, 
	
	$$(p + q)(x) = p(x) + q(x), \space \space (a \cdot p)(x) = a p(x)$$
	
	1. Is $\mathcal{P}_n$ a vector space $+$ and $\cdot$ playing the rolse of vector addition and scalar multiplication?
	
	2. If yes, what is the dimension of $\mathcal{P}_n$?
	
	3. Define a function $\cdot : \mathbb{R} \times \mathcal{P}_n \rightarrow \mathcal{P}_n$ on $\mathcal{P}_n$ as follows: for any $\mathcal{p, q} \in \mathcal{P}_n$, 
		
		$$p \cdot q = \int_{-1}^1 p(x)q(x) \,dx$$
		
		Veify that this is an inner product on $\mathcal{P}_n$.
		
	4. Consider the functions $e_i \in \mathcal{P}_2$, where $i = 0, 1, 2$, defined as follows: for any $x \in [-1, 1]$, 
	
		$$e_0(x) = 1, \space e_1(x) = x, \space e_2(x) = x^2$$
		
		Show that $(e_i)_{i = 0}^2$ is a basis of $\mathcal{P}_2$.
		
	5. Use the Gram-Schmidt orthogonalisation process to construct an orthonormal basis $(f_i)$ of $\mathcal{P}_2$ from the basis $(e_i)$.
	
	6. Define the map $D: \mathcal{P}_2 \rightarrow \mathcal{P}_1$ as follows: for any $x \in [-1, 1]$, and any $p \in \mathcal{P}_2$
	
		$$Dp(x) = \frac{dp(x)}{dx}$$
		
		Is $D$ a linear map?
		
	7. Given any $p(x) = a_0 + a_1x + a_2x^2 \in \mathcal{P}_2$, what are the componenets of $p$ with respect to the bases $(f_i)_{i = 0}^2$ of $\mathcal{P}_2$ and $(f_i)_{i = 0}^1$ of $\mathcal{P}_1$?
	
	8. Using the results obtained from Q7, verify that $[Dp] = [D][p]$
	
	
??? Answer - "Solution"

## Question - 4
	
!!! Question - "Question"
	Let $V$ and $W$ be finite dimensional inner product spaces.
	
	1. Given vectors $v \in V$ and $w \in W$, show that transpose of the lienar map $w \otimes v: V \rightarrow W$ is the linear map $v \otimes w: W \rightarrow V$.
	
	2. Given linear maps $S, T \in L(V, V)$, show that $(ST)^T = T^TS^T$
		
??? Answer - "Solution"
	

	
	