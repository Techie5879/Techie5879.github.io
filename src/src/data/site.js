export const site = {
  name: "Aritra Bandyopadhyay",
  role: "ML Engineer | ML Researcher",
  institution: "",
  tagline:
    "Machine learning research, technical writing, and system building.",
  about:
    'Welcome to my digital corner. I work across mechanistic interpretability, computer vision, and information retrieval, with experience spanning applied ML engineering at <strong>Brighterway (YC S24)</strong> and <strong>Mercor</strong>, alongside academic research.',
  research:
    "I am fascinated by mechanistic interpretability, multimodal systems, and practical information retrieval.",
  home: {
    skills: [
      "PyTorch",
      "Transformers",
      "TransformerLens",
      "OpenCV",
      "LLM Evals"
    ],
    interests: [
      "Mechanistic Interpretability",
      "Foundation Model Alignment",
      "Vision-Language Models",
      "Model Editing",
      "Computer Vision"
    ],
    highlights: [
      "publication/conference-paper",
      "logs/llms",
      "downtime/reflections"
    ],
    repos: [
      {
        name: "opencode-smart-session-picker",
        description: "OpenCode TUI plugin replacing the built-in session picker with hybrid SQLite + fzf search over titles, paths, and transcripts.",
        href: "https://github.com/Techie5879/opencode-smart-session-picker",
        lang: "TypeScript",
        langColor: "#3178C6",
        tags: ["OpenCode Plugin", "SQLite FTS", "fzf", "Bun"]
      },
      {
        name: "linkswitch",
        description: "Native macOS menu bar URL handler that routes links to the right browser and profile based on which app opened them. Keeps work/personal browsing cleanly separated.",
        href: "https://github.com/Techie5879/linkswitch",
        lang: "Swift",
        langColor: "#F05138",
        tags: ["macOS", "AppKit", "Menu Bar"]
      },
      {
        name: "tabrewind",
        description: "Local-first browser history search with hybrid BM25 + vector retrieval. Privacy-first, no cloud dependencies.",
        href: "https://github.com/Techie5879/tabrewind",
        lang: "Python",
        langColor: "#3572A5",
        tags: ["SQLite", "FTS5", "llama.cpp"]
      },
      {
        name: "webpage-tts",
        description: "Chrome extension + FastAPI backend for local text-to-speech on any webpage. Runs MLX Qwen3-TTS on Apple Silicon.",
        href: "https://github.com/Techie5879/webpage-tts",
        lang: "TypeScript",
        langColor: "#3178C6",
        tags: ["MLX", "Chrome Extension", "FastAPI"]
      }
    ]
  },
  socials: [
    { label: "GitHub", href: "https://github.com/Techie5879" },
    { label: "LinkedIn", href: "https://www.linkedin.com/in/aritraban/" },
    { label: "Scholar", href: "https://scholar.google.com/citations?user=OVO39asAAAAJ&hl=en" },
    { label: "X", href: "https://twitter.com/aritraban7" },
    { label: "Email", href: "mailto:aritraxban@gmail.com" }
  ],
  work: [
    {
      id: "brighterway",
      title: "Machine Learning Engineer",
      org: "Brighterway (YC S24)",
      period: "Dec 2024 – Present",
      summary:
        "Owning document intelligence for medical-legal records, building evals and observability that helped double revenue.",
      logo: "brighterway.svg"
    },
    {
      id: "manifold-research-group",
      title: "Research Scientist",
      org: "Manifold Research Group",
      period: "Nov 2024 – Dec 2025",
      summary:
        "Leading research on self-evaluation and calibration of multimodal models, with a focus on improving reasoning at test-time.",
      logo: "manifold.png"
    },
    {
      id: "aiisc-usc",
      title: "ML Research Intern",
      org: "AIISC, University of South Carolina",
      period: "Sep 2024 – Aug 2025",
      summary:
        "Investigating safety alignment and adversarial robustness of text-to-image models through training-free editing and fine-tuning.",
      logo: "aiisc-wordmark.png"
    },
    {
      id: "spar",
      title: "Research Fellow",
      org: "Supervised Program for Alignment Research",
      period: "Feb 2025 – May 2025",
      summary:
        "Worked on two SPAR projects under Shashwat Goel and Jacek Karwowski.",
      logo: "spar.png"
    },
    {
      id: "tum",
      title: "ML & Computer Vision Research Intern",
      org: "Technical University of Munich",
      period: "May 2024 – Sep 2024",
      summary:
        "DAAD-WISE scholar developing novel point cloud registration techniques for multimodal medical imaging data.",
      logo: "tum.svg"
    },
    {
      id: "mercor",
      title: "Machine Learning Engineer",
      org: "Mercor",
      period: "May 2023 – Aug 2024",
      summary:
        "3rd hire pre-seed; architected sourcing agents and retrieval pipelines that drove 150% quarterly revenue growth.",
      logo: "mercor.png"
    },
    {
      id: "iit-kharagpur",
      title: "ML Research Intern",
      org: "Indian Institute of Technology, Kharagpur",
      period: "May 2023 – Nov 2023",
      summary:
        "Worked on time-series fraud detection in smart grids using explainable AI, achieving 97% agreement with domain experts.",
      logo: "iitkgp.svg"
    },
    {
      id: "isi-kolkata",
      title: "Quantum Computing Research Intern",
      org: "Indian Statistical Institute, Kolkata",
      period: "Jul 2023 – Sep 2023",
      summary:
        "Implemented quantum algorithms for cryptography and Fourier analysis, including iterative HHL with quantum phase estimation.",
      logo: "isi.svg"
    }
  ],
  education: [
    {
      title: "B.Tech in Computer Science and Technology",
      org: "Indian Institute of Engineering Science and Technology, Shibpur (IIEST)",
      period: "2021 - 2025",
      summary:
        "GPA 9.85/10, including two perfect 10/10 semesters."
    }
  ],
  awards: [
    {
      title: "SPAR Research Fellow'25 x2",
      meta: "SPAR | 2025",
      summary: "Research Fellow for two SPAR projects."
    },
    {
      title: "DAAD-WISE'24 Scholar @ TUM",
      meta: "DAAD | 2024",
      summary: "One of ~200 in India selected for the DAAD-WISE scholarship."
    },
    {
      title: "Code For Good'24 - JPMC",
      meta: "JPMC | 2024",
      summary: "Selected among 3,000 students in India for Code for Good."
    },
    {
      title: "1st in BrainDead ML Hackathon",
      meta: "IIEST | 2023",
      summary: "Team secured 1st place in IIEST's inter-university ML hackathon, sponsored by Mercor, which led to an MLE role."
    }
  ]
};
