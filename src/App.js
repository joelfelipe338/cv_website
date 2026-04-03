import React, { useState, useEffect } from 'react';
import Logo from './components/Logo';

function App() {
  const [scrolled, setScrolled] = useState(false);
  const [menuOpen, setMenuOpen] = useState(false);
  const [formData, setFormData] = useState({
    name: '', email: '', subject: '', message: ''
  });

  useEffect(() => {
    const handleScroll = () => setScrolled(window.scrollY > 50);
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    const mailtoLink = `mailto:joelfelipe338@gmail.com?subject=${encodeURIComponent(formData.subject)}&body=${encodeURIComponent(
      `Nome: ${formData.name}\nEmail: ${formData.email}\n\n${formData.message}`
    )}`;
    window.location.href = mailtoLink;
  };

  return (
    <>
      {/* ==================== NAVBAR ==================== */}
      <nav className={`navbar ${scrolled ? 'scrolled' : ''}`}>
        <div className="container">
          <a href="#home" className="navbar-logo">
            <Logo height={44} darkBg={!scrolled} />
          </a>
          <ul className={`nav-links ${menuOpen ? 'open' : ''}`}>
            <li><a href="#home" onClick={() => setMenuOpen(false)}>Início</a></li>
            <li><a href="#services" onClick={() => setMenuOpen(false)}>Serviços</a></li>
            <li><a href="#projects" onClick={() => setMenuOpen(false)}>Projetos</a></li>
            <li><a href="#testimonials" onClick={() => setMenuOpen(false)}>Depoimentos</a></li>
            <li><a href="#contact" className="nav-cta" onClick={() => setMenuOpen(false)}>Contato</a></li>
          </ul>
          <button className="menu-toggle" onClick={() => setMenuOpen(!menuOpen)} aria-label="Menu">
            <span></span>
            <span></span>
            <span></span>
          </button>
        </div>
      </nav>

      {/* ==================== HERO ==================== */}
      <section className="hero" id="home">
        <div className="container">
          <div className="hero-content">
            <div className="hero-badge">
              <span className="dot"></span>
              Disponível para novos projetos
            </div>
            <h1>
              Transformamos ideias em{' '}
              <span className="highlight">soluções digitais</span> de alto impacto
            </h1>
            <p>
              Desenvolvimento web e mobile com foco em performance, design moderno
              e experiência do usuário. Entregamos projetos com velocidade e qualidade.
            </p>
            <div className="hero-buttons">
              <a href="#contact" className="btn-primary">
                Iniciar Projeto →
              </a>
              <a href="#projects" className="btn-outline">
                Ver Projetos
              </a>
            </div>
            <div className="hero-stats">
              <div className="hero-stat">
                <h3>50<span className="accent">+</span></h3>
                <p>Projetos Entregues</p>
              </div>
              <div className="hero-stat">
                <h3>30<span className="accent">+</span></h3>
                <p>Clientes Satisfeitos</p>
              </div>
              <div className="hero-stat">
                <h3>3<span className="accent">+</span></h3>
                <p>Anos de Experiência</p>
              </div>
            </div>
          </div>
        </div>
        <div className="hero-visual">
          <svg viewBox="0 0 500 500" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="250" cy="250" r="200" stroke="#1A8FE3" strokeWidth="0.5" />
            <circle cx="250" cy="250" r="150" stroke="#1A8FE3" strokeWidth="0.5" />
            <circle cx="250" cy="250" r="100" stroke="#1A8FE3" strokeWidth="0.5" />
            <circle cx="250" cy="250" r="50" stroke="#1A8FE3" strokeWidth="0.5" />
          </svg>
        </div>
      </section>

      {/* ==================== SERVICES ==================== */}
      <section className="section services" id="services">
        <div className="container">
          <div className="text-center">
            <span className="section-label">Serviços</span>
            <h2 className="section-title">O que fazemos de melhor</h2>
            <p className="section-subtitle">
              Soluções completas para levar seu negócio ao próximo nível digital
            </p>
          </div>
          <div className="services-grid">
            <div className="service-card">
              <div className="service-icon">🌐</div>
              <h3>Desenvolvimento Web</h3>
              <p>
                Sites e aplicações web modernas com React, responsivos e otimizados
                para performance e SEO. Do landing page ao sistema complexo.
              </p>
            </div>
            <div className="service-card">
              <div className="service-icon">📱</div>
              <h3>Aplicativos Mobile</h3>
              <p>
                Apps nativos e multiplataforma com React Native e Flutter.
                Experiências fluidas para iOS e Android que seus usuários vão amar.
              </p>
            </div>
            <div className="service-card">
              <div className="service-icon">🎨</div>
              <h3>UI/UX Design</h3>
              <p>
                Interfaces intuitivas e visualmente impactantes. Prototipagem,
                design system e experiência do usuário pensada em cada detalhe.
              </p>
            </div>
            <div className="service-card">
              <div className="service-icon">⚡</div>
              <h3>APIs & Backend</h3>
              <p>
                Arquitetura de APIs robustas e escaláveis. Integrações com serviços
                de terceiros, bancos de dados e infraestrutura em nuvem.
              </p>
            </div>
            <div className="service-card">
              <div className="service-icon">🚀</div>
              <h3>Consultoria Tech</h3>
              <p>
                Análise técnica e estratégica para seu projeto. Ajudamos a escolher
                as melhores tecnologias e definir a arquitetura ideal.
              </p>
            </div>
            <div className="service-card">
              <div className="service-icon">🔧</div>
              <h3>Manutenção & Suporte</h3>
              <p>
                Suporte contínuo, atualizações e melhorias para manter seu produto
                sempre funcionando com máxima eficiência.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* ==================== PROJECTS ==================== */}
      <section className="section" id="projects">
        <div className="container">
          <div className="text-center">
            <span className="section-label">Portfólio</span>
            <h2 className="section-title">Projetos em destaque</h2>
            <p className="section-subtitle">
              Conheça alguns dos projetos que desenvolvemos com excelência
            </p>
          </div>
          <div className="projects-grid">
            <div className="project-card">
              <div className="project-image" style={{ background: 'linear-gradient(135deg, #1A8FE3, #0A1628)' }}>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%', color: '#fff', fontSize: '3rem' }}>
                  🛒
                </div>
                <div className="overlay">
                  <span className="overlay-text">Ver Detalhes</span>
                </div>
              </div>
              <div className="project-info">
                <div className="project-tags">
                  <span className="project-tag">React</span>
                  <span className="project-tag">Node.js</span>
                  <span className="project-tag">MongoDB</span>
                </div>
                <h3>E-Commerce Premium</h3>
                <p>Plataforma completa de e-commerce com painel administrativo, gateway de pagamento e gestão de estoque em tempo real.</p>
              </div>
            </div>

            <div className="project-card">
              <div className="project-image" style={{ background: 'linear-gradient(135deg, #38BDF8, #1A8FE3)' }}>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%', color: '#fff', fontSize: '3rem' }}>
                  🏥
                </div>
                <div className="overlay">
                  <span className="overlay-text">Ver Detalhes</span>
                </div>
              </div>
              <div className="project-info">
                <div className="project-tags">
                  <span className="project-tag">React Native</span>
                  <span className="project-tag">Firebase</span>
                </div>
                <h3>App Saúde+</h3>
                <p>Aplicativo mobile para agendamento de consultas médicas com telemedicina, prontuário eletrônico e notificações.</p>
              </div>
            </div>

            <div className="project-card">
              <div className="project-image" style={{ background: 'linear-gradient(135deg, #0D5FA3, #38BDF8)' }}>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%', color: '#fff', fontSize: '3rem' }}>
                  📊
                </div>
                <div className="overlay">
                  <span className="overlay-text">Ver Detalhes</span>
                </div>
              </div>
              <div className="project-info">
                <div className="project-tags">
                  <span className="project-tag">Next.js</span>
                  <span className="project-tag">PostgreSQL</span>
                  <span className="project-tag">AWS</span>
                </div>
                <h3>Dashboard Analytics</h3>
                <p>Painel de analytics com visualização de dados em tempo real, relatórios customizados e integração com múltiplas fontes.</p>
              </div>
            </div>

            <div className="project-card">
              <div className="project-image" style={{ background: 'linear-gradient(135deg, #132240, #1A8FE3)' }}>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%', color: '#fff', fontSize: '3rem' }}>
                  🍔
                </div>
                <div className="overlay">
                  <span className="overlay-text">Ver Detalhes</span>
                </div>
              </div>
              <div className="project-info">
                <div className="project-tags">
                  <span className="project-tag">Flutter</span>
                  <span className="project-tag">Node.js</span>
                </div>
                <h3>App Delivery Express</h3>
                <p>App de delivery com rastreamento em tempo real, sistema de avaliação, chat entre cliente e entregador.</p>
              </div>
            </div>

            <div className="project-card">
              <div className="project-image" style={{ background: 'linear-gradient(135deg, #1A8FE3, #4DB5FF)' }}>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%', color: '#fff', fontSize: '3rem' }}>
                  🏢
                </div>
                <div className="overlay">
                  <span className="overlay-text">Ver Detalhes</span>
                </div>
              </div>
              <div className="project-info">
                <div className="project-tags">
                  <span className="project-tag">React</span>
                  <span className="project-tag">TypeScript</span>
                </div>
                <h3>Portal Corporativo</h3>
                <p>Site institucional moderno com CMS integrado, blog, área de carreiras e sistema de leads automatizado.</p>
              </div>
            </div>

            <div className="project-card">
              <div className="project-image" style={{ background: 'linear-gradient(135deg, #0A1628, #0D5FA3)' }}>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%', color: '#fff', fontSize: '3rem' }}>
                  💰
                </div>
                <div className="overlay">
                  <span className="overlay-text">Ver Detalhes</span>
                </div>
              </div>
              <div className="project-info">
                <div className="project-tags">
                  <span className="project-tag">React Native</span>
                  <span className="project-tag">Python</span>
                  <span className="project-tag">AI</span>
                </div>
                <h3>FinApp - Finanças</h3>
                <p>Aplicativo de gestão financeira pessoal com IA para categorização automática e insights de gastos.</p>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ==================== TESTIMONIALS ==================== */}
      <section className="section testimonials" id="testimonials">
        <div className="container">
          <div className="text-center">
            <span className="section-label">Depoimentos</span>
            <h2 className="section-title">O que nossos clientes dizem</h2>
            <p className="section-subtitle">
              A satisfação dos nossos clientes é nosso maior indicador de sucesso
            </p>
          </div>
          <div className="testimonials-grid">
            <div className="testimonial-card">
              <div className="testimonial-stars">★★★★★</div>
              <blockquote>
                "A Just Fast entregou nosso e-commerce em tempo recorde e com uma qualidade
                impressionante. As vendas online aumentaram 200% no primeiro mês. Recomendo demais!"
              </blockquote>
              <div className="testimonial-author">
                <div className="testimonial-avatar">MR</div>
                <div className="testimonial-author-info">
                  <h4>Marina Rodrigues</h4>
                  <p>CEO, Loja Bella</p>
                </div>
              </div>
            </div>

            <div className="testimonial-card">
              <div className="testimonial-stars">★★★★★</div>
              <blockquote>
                "Profissionalismo e agilidade definem a Just Fast. Nosso app de delivery ficou
                incrível, com interface intuitiva e performance excelente. Superaram todas as expectativas."
              </blockquote>
              <div className="testimonial-author">
                <div className="testimonial-avatar">RA</div>
                <div className="testimonial-author-info">
                  <h4>Ricardo Almeida</h4>
                  <p>Fundador, Express Delivery</p>
                </div>
              </div>
            </div>

            <div className="testimonial-card">
              <div className="testimonial-stars">★★★★★</div>
              <blockquote>
                "Precisávamos de um sistema complexo de gestão e a equipe da Just Fast não só entregou
                como sugeriu melhorias que nem tínhamos pensado. Parceria que deu muito certo!"
              </blockquote>
              <div className="testimonial-author">
                <div className="testimonial-avatar">CS</div>
                <div className="testimonial-author-info">
                  <h4>Camila Santos</h4>
                  <p>Diretora, CliniSaúde</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ==================== CONTACT ==================== */}
      <section className="section contact" id="contact">
        <div className="container">
          <div className="contact-wrapper">
            <div className="contact-info">
              <span className="section-label">Contato</span>
              <h2>Vamos construir algo incrível juntos?</h2>
              <p>
                Entre em contato e conte sobre seu projeto. Estamos prontos para
                transformar sua visão em realidade digital.
              </p>
              <div className="contact-details">
                <div className="contact-item">
                  <div className="contact-item-icon">✉️</div>
                  <div className="contact-item-text">
                    <h4>Email</h4>
                    <p>joelfelipe338@gmail.com</p>
                  </div>
                </div>
                <div className="contact-item">
                  <div className="contact-item-icon">📍</div>
                  <div className="contact-item-text">
                    <h4>Localização</h4>
                    <p>Brasil</p>
                  </div>
                </div>
                <div className="contact-item">
                  <div className="contact-item-icon">⏰</div>
                  <div className="contact-item-text">
                    <h4>Disponibilidade</h4>
                    <p>Seg - Sex, 9h - 18h</p>
                  </div>
                </div>
              </div>
            </div>

            <form className="contact-form" onSubmit={handleSubmit}>
              <div className="form-row">
                <div className="form-group">
                  <label htmlFor="name">Nome</label>
                  <input
                    type="text"
                    id="name"
                    name="name"
                    placeholder="Seu nome"
                    value={formData.name}
                    onChange={handleChange}
                    required
                  />
                </div>
                <div className="form-group">
                  <label htmlFor="email">Email</label>
                  <input
                    type="email"
                    id="email"
                    name="email"
                    placeholder="seu@email.com"
                    value={formData.email}
                    onChange={handleChange}
                    required
                  />
                </div>
              </div>
              <div className="form-group">
                <label htmlFor="subject">Assunto</label>
                <input
                  type="text"
                  id="subject"
                  name="subject"
                  placeholder="Sobre o que é seu projeto?"
                  value={formData.subject}
                  onChange={handleChange}
                  required
                />
              </div>
              <div className="form-group">
                <label htmlFor="message">Mensagem</label>
                <textarea
                  id="message"
                  name="message"
                  placeholder="Conte mais sobre seu projeto, prazos e orçamento..."
                  value={formData.message}
                  onChange={handleChange}
                  required
                ></textarea>
              </div>
              <button type="submit" className="btn-submit">
                Enviar Mensagem →
              </button>
            </form>
          </div>
        </div>
      </section>

      {/* ==================== FOOTER ==================== */}
      <footer className="footer">
        <div className="container">
          <div className="footer-content">
            <div className="footer-brand">
              <Logo height={52} darkBg={true} />
              <p>
                Desenvolvimento web e mobile com velocidade e qualidade.
                Transformando ideias em soluções digitais de impacto.
              </p>
            </div>
            <div className="footer-links">
              <h4>Navegação</h4>
              <ul>
                <li><a href="#home">Início</a></li>
                <li><a href="#services">Serviços</a></li>
                <li><a href="#projects">Projetos</a></li>
                <li><a href="#contact">Contato</a></li>
              </ul>
            </div>
            <div className="footer-links">
              <h4>Serviços</h4>
              <ul>
                <li><a href="#services">Desenvolvimento Web</a></li>
                <li><a href="#services">Apps Mobile</a></li>
                <li><a href="#services">UI/UX Design</a></li>
                <li><a href="#services">Consultoria</a></li>
              </ul>
            </div>
          </div>
          <div className="footer-bottom">
            <p>&copy; {new Date().getFullYear()} Just Fast. Todos os direitos reservados.</p>
            <div className="footer-social">
              <a href="mailto:joelfelipe338@gmail.com" aria-label="Email">✉</a>
              <a href="https://github.com/joelfelipe338" target="_blank" rel="noopener noreferrer" aria-label="GitHub">⌨</a>
            </div>
          </div>
        </div>
      </footer>
    </>
  );
}

export default App;
